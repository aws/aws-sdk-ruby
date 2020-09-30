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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatch)

module Aws::CloudWatch
  # An API client for CloudWatch.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatch::Client.new(
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

    @identifier = :cloudwatch

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
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Deletes the specified alarms. You can delete up to 100 alarms in one
    # operation. However, this total can include no more than one composite
    # alarm. For example, you could delete 99 metric alarms and one
    # composite alarms with one operation, but you can't delete two
    # composite alarms with one operation.
    #
    # In the event of an error, no alarms are deleted.
    #
    # <note markdown="1"> It is possible to create a loop or cycle of composite alarms, where
    # composite alarm A depends on composite alarm B, and composite alarm B
    # also depends on composite alarm A. In this scenario, you can't delete
    # any composite alarm that is part of the cycle because there is always
    # still a composite alarm that depends on that alarm that you want to
    # delete.
    #
    #  To get out of such a situation, you must break the cycle by changing
    # the rule of one of the composite alarms in the cycle to remove a
    # dependency that creates the cycle. The simplest change to make to
    # break a cycle is to change the `AlarmRule` of one of the alarms to
    # `False`.
    #
    #  Additionally, the evaluation of composite alarms stops if CloudWatch
    # detects a cycle in the evaluation path.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :alarm_names
    #   The alarms to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alarms({
    #     alarm_names: ["AlarmName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteAlarms AWS API Documentation
    #
    # @overload delete_alarms(params = {})
    # @param [Hash] params ({})
    def delete_alarms(params = {}, options = {})
      req = build_request(:delete_alarms, params)
      req.send_request(options)
    end

    # Deletes the specified anomaly detection model from your account.
    #
    # @option params [required, String] :namespace
    #   The namespace associated with the anomaly detection model to delete.
    #
    # @option params [required, String] :metric_name
    #   The metric name associated with the anomaly detection model to delete.
    #
    # @option params [Array<Types::Dimension>] :dimensions
    #   The metric dimensions associated with the anomaly detection model to
    #   delete.
    #
    # @option params [required, String] :stat
    #   The statistic associated with the anomaly detection model to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_anomaly_detector({
    #     namespace: "Namespace", # required
    #     metric_name: "MetricName", # required
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       },
    #     ],
    #     stat: "AnomalyDetectorMetricStat", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteAnomalyDetector AWS API Documentation
    #
    # @overload delete_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def delete_anomaly_detector(params = {}, options = {})
      req = build_request(:delete_anomaly_detector, params)
      req.send_request(options)
    end

    # Deletes all dashboards that you specify. You can specify up to 100
    # dashboards to delete. If there is an error during this call, no
    # dashboards are deleted.
    #
    # @option params [required, Array<String>] :dashboard_names
    #   The dashboards to be deleted. This parameter is required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboards({
    #     dashboard_names: ["DashboardName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteDashboards AWS API Documentation
    #
    # @overload delete_dashboards(params = {})
    # @param [Hash] params ({})
    def delete_dashboards(params = {}, options = {})
      req = build_request(:delete_dashboards, params)
      req.send_request(options)
    end

    # Permanently deletes the specified Contributor Insights rules.
    #
    # If you create a rule, delete it, and then re-create it with the same
    # name, historical data from the first time the rule was created might
    # not be available.
    #
    # @option params [required, Array<String>] :rule_names
    #   An array of the rule names to delete. If you need to find out the
    #   names of your rules, use [DescribeInsightRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html
    #
    # @return [Types::DeleteInsightRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInsightRulesOutput#failures #failures} => Array&lt;Types::PartialFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_insight_rules({
    #     rule_names: ["InsightRuleName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].failure_resource #=> String
    #   resp.failures[0].exception_type #=> String
    #   resp.failures[0].failure_code #=> String
    #   resp.failures[0].failure_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteInsightRules AWS API Documentation
    #
    # @overload delete_insight_rules(params = {})
    # @param [Hash] params ({})
    def delete_insight_rules(params = {}, options = {})
      req = build_request(:delete_insight_rules, params)
      req.send_request(options)
    end

    # Retrieves the history for the specified alarm. You can filter the
    # results by date range or item type. If an alarm name is not specified,
    # the histories for either all metric alarms or all composite alarms are
    # returned.
    #
    # CloudWatch retains the history of an alarm even if you delete the
    # alarm.
    #
    # @option params [String] :alarm_name
    #   The name of the alarm.
    #
    # @option params [Array<String>] :alarm_types
    #   Use this parameter to specify whether you want the operation to return
    #   metric alarms or composite alarms. If you omit this parameter, only
    #   metric alarms are returned.
    #
    # @option params [String] :history_item_type
    #   The type of alarm histories to retrieve.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_date
    #   The starting date to retrieve alarm history.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_date
    #   The ending date to retrieve alarm history.
    #
    # @option params [Integer] :max_records
    #   The maximum number of alarm history records to retrieve.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #
    # @option params [String] :scan_by
    #   Specified whether to return the newest or oldest alarm history first.
    #   Specify `TimestampDescending` to have the newest event history
    #   returned first, and specify `TimestampAscending` to have the oldest
    #   history returned first.
    #
    # @return [Types::DescribeAlarmHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlarmHistoryOutput#alarm_history_items #alarm_history_items} => Array&lt;Types::AlarmHistoryItem&gt;
    #   * {Types::DescribeAlarmHistoryOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarm_history({
    #     alarm_name: "AlarmName",
    #     alarm_types: ["CompositeAlarm"], # accepts CompositeAlarm, MetricAlarm
    #     history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     max_records: 1,
    #     next_token: "NextToken",
    #     scan_by: "TimestampDescending", # accepts TimestampDescending, TimestampAscending
    #   })
    #
    # @example Response structure
    #
    #   resp.alarm_history_items #=> Array
    #   resp.alarm_history_items[0].alarm_name #=> String
    #   resp.alarm_history_items[0].alarm_type #=> String, one of "CompositeAlarm", "MetricAlarm"
    #   resp.alarm_history_items[0].timestamp #=> Time
    #   resp.alarm_history_items[0].history_item_type #=> String, one of "ConfigurationUpdate", "StateUpdate", "Action"
    #   resp.alarm_history_items[0].history_summary #=> String
    #   resp.alarm_history_items[0].history_data #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmHistory AWS API Documentation
    #
    # @overload describe_alarm_history(params = {})
    # @param [Hash] params ({})
    def describe_alarm_history(params = {}, options = {})
      req = build_request(:describe_alarm_history, params)
      req.send_request(options)
    end

    # Retrieves the specified alarms. You can filter the results by
    # specifying a a prefix for the alarm name, the alarm state, or a prefix
    # for any action.
    #
    # @option params [Array<String>] :alarm_names
    #   The names of the alarms to retrieve information about.
    #
    # @option params [String] :alarm_name_prefix
    #   An alarm name prefix. If you specify this parameter, you receive
    #   information about all alarms that have names that start with this
    #   prefix.
    #
    #   If this parameter is specified, you cannot specify `AlarmNames`.
    #
    # @option params [Array<String>] :alarm_types
    #   Use this parameter to specify whether you want the operation to return
    #   metric alarms or composite alarms. If you omit this parameter, only
    #   metric alarms are returned.
    #
    # @option params [String] :children_of_alarm_name
    #   If you use this parameter and specify the name of a composite alarm,
    #   the operation returns information about the "children" alarms of the
    #   alarm you specify. These are the metric alarms and composite alarms
    #   referenced in the `AlarmRule` field of the composite alarm that you
    #   specify in `ChildrenOfAlarmName`. Information about the composite
    #   alarm that you name in `ChildrenOfAlarmName` is not returned.
    #
    #   If you specify `ChildrenOfAlarmName`, you cannot specify any other
    #   parameters in the request except for `MaxRecords` and `NextToken`. If
    #   you do so, you receive a validation error.
    #
    #   <note markdown="1"> Only the `Alarm Name`, `ARN`, `StateValue`
    #   (OK/ALARM/INSUFFICIENT\_DATA), and `StateUpdatedTimestamp` information
    #   are returned by this operation when you use this parameter. To get
    #   complete information about these alarms, perform another
    #   `DescribeAlarms` operation and specify the parent alarm names in the
    #   `AlarmNames` parameter.
    #
    #    </note>
    #
    # @option params [String] :parents_of_alarm_name
    #   If you use this parameter and specify the name of a metric or
    #   composite alarm, the operation returns information about the
    #   "parent" alarms of the alarm you specify. These are the composite
    #   alarms that have `AlarmRule` parameters that reference the alarm named
    #   in `ParentsOfAlarmName`. Information about the alarm that you specify
    #   in `ParentsOfAlarmName` is not returned.
    #
    #   If you specify `ParentsOfAlarmName`, you cannot specify any other
    #   parameters in the request except for `MaxRecords` and `NextToken`. If
    #   you do so, you receive a validation error.
    #
    #   <note markdown="1"> Only the Alarm Name and ARN are returned by this operation when you
    #   use this parameter. To get complete information about these alarms,
    #   perform another `DescribeAlarms` operation and specify the parent
    #   alarm names in the `AlarmNames` parameter.
    #
    #    </note>
    #
    # @option params [String] :state_value
    #   Specify this parameter to receive information only about alarms that
    #   are currently in the state that you specify.
    #
    # @option params [String] :action_prefix
    #   Use this parameter to filter the results of the operation to only
    #   those alarms that use a certain alarm action. For example, you could
    #   specify the ARN of an SNS topic to find all alarms that send
    #   notifications to that topic.
    #
    # @option params [Integer] :max_records
    #   The maximum number of alarm descriptions to retrieve.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #
    # @return [Types::DescribeAlarmsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlarmsOutput#composite_alarms #composite_alarms} => Array&lt;Types::CompositeAlarm&gt;
    #   * {Types::DescribeAlarmsOutput#metric_alarms #metric_alarms} => Array&lt;Types::MetricAlarm&gt;
    #   * {Types::DescribeAlarmsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarms({
    #     alarm_names: ["AlarmName"],
    #     alarm_name_prefix: "AlarmNamePrefix",
    #     alarm_types: ["CompositeAlarm"], # accepts CompositeAlarm, MetricAlarm
    #     children_of_alarm_name: "AlarmName",
    #     parents_of_alarm_name: "AlarmName",
    #     state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
    #     action_prefix: "ActionPrefix",
    #     max_records: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.composite_alarms #=> Array
    #   resp.composite_alarms[0].actions_enabled #=> Boolean
    #   resp.composite_alarms[0].alarm_actions #=> Array
    #   resp.composite_alarms[0].alarm_actions[0] #=> String
    #   resp.composite_alarms[0].alarm_arn #=> String
    #   resp.composite_alarms[0].alarm_configuration_updated_timestamp #=> Time
    #   resp.composite_alarms[0].alarm_description #=> String
    #   resp.composite_alarms[0].alarm_name #=> String
    #   resp.composite_alarms[0].alarm_rule #=> String
    #   resp.composite_alarms[0].insufficient_data_actions #=> Array
    #   resp.composite_alarms[0].insufficient_data_actions[0] #=> String
    #   resp.composite_alarms[0].ok_actions #=> Array
    #   resp.composite_alarms[0].ok_actions[0] #=> String
    #   resp.composite_alarms[0].state_reason #=> String
    #   resp.composite_alarms[0].state_reason_data #=> String
    #   resp.composite_alarms[0].state_updated_timestamp #=> Time
    #   resp.composite_alarms[0].state_value #=> String, one of "OK", "ALARM", "INSUFFICIENT_DATA"
    #   resp.metric_alarms #=> Array
    #   resp.metric_alarms[0].alarm_name #=> String
    #   resp.metric_alarms[0].alarm_arn #=> String
    #   resp.metric_alarms[0].alarm_description #=> String
    #   resp.metric_alarms[0].alarm_configuration_updated_timestamp #=> Time
    #   resp.metric_alarms[0].actions_enabled #=> Boolean
    #   resp.metric_alarms[0].ok_actions #=> Array
    #   resp.metric_alarms[0].ok_actions[0] #=> String
    #   resp.metric_alarms[0].alarm_actions #=> Array
    #   resp.metric_alarms[0].alarm_actions[0] #=> String
    #   resp.metric_alarms[0].insufficient_data_actions #=> Array
    #   resp.metric_alarms[0].insufficient_data_actions[0] #=> String
    #   resp.metric_alarms[0].state_value #=> String, one of "OK", "ALARM", "INSUFFICIENT_DATA"
    #   resp.metric_alarms[0].state_reason #=> String
    #   resp.metric_alarms[0].state_reason_data #=> String
    #   resp.metric_alarms[0].state_updated_timestamp #=> Time
    #   resp.metric_alarms[0].metric_name #=> String
    #   resp.metric_alarms[0].namespace #=> String
    #   resp.metric_alarms[0].statistic #=> String, one of "SampleCount", "Average", "Sum", "Minimum", "Maximum"
    #   resp.metric_alarms[0].extended_statistic #=> String
    #   resp.metric_alarms[0].dimensions #=> Array
    #   resp.metric_alarms[0].dimensions[0].name #=> String
    #   resp.metric_alarms[0].dimensions[0].value #=> String
    #   resp.metric_alarms[0].period #=> Integer
    #   resp.metric_alarms[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.metric_alarms[0].evaluation_periods #=> Integer
    #   resp.metric_alarms[0].datapoints_to_alarm #=> Integer
    #   resp.metric_alarms[0].threshold #=> Float
    #   resp.metric_alarms[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"
    #   resp.metric_alarms[0].treat_missing_data #=> String
    #   resp.metric_alarms[0].evaluate_low_sample_count_percentile #=> String
    #   resp.metric_alarms[0].metrics #=> Array
    #   resp.metric_alarms[0].metrics[0].id #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.namespace #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.metric_name #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.dimensions #=> Array
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.period #=> Integer
    #   resp.metric_alarms[0].metrics[0].metric_stat.stat #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.metric_alarms[0].metrics[0].expression #=> String
    #   resp.metric_alarms[0].metrics[0].label #=> String
    #   resp.metric_alarms[0].metrics[0].return_data #=> Boolean
    #   resp.metric_alarms[0].metrics[0].period #=> Integer
    #   resp.metric_alarms[0].threshold_metric_id #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * alarm_exists
    #   * composite_alarm_exists
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarms AWS API Documentation
    #
    # @overload describe_alarms(params = {})
    # @param [Hash] params ({})
    def describe_alarms(params = {}, options = {})
      req = build_request(:describe_alarms, params)
      req.send_request(options)
    end

    # Retrieves the alarms for the specified metric. To filter the results,
    # specify a statistic, period, or unit.
    #
    # @option params [required, String] :metric_name
    #   The name of the metric.
    #
    # @option params [required, String] :namespace
    #   The namespace of the metric.
    #
    # @option params [String] :statistic
    #   The statistic for the metric, other than percentiles. For percentile
    #   statistics, use `ExtendedStatistics`.
    #
    # @option params [String] :extended_statistic
    #   The percentile statistic for the metric. Specify a value between p0.0
    #   and p100.
    #
    # @option params [Array<Types::Dimension>] :dimensions
    #   The dimensions associated with the metric. If the metric has any
    #   associated dimensions, you must specify them in order for the call to
    #   succeed.
    #
    # @option params [Integer] :period
    #   The period, in seconds, over which the statistic is applied.
    #
    # @option params [String] :unit
    #   The unit for the metric.
    #
    # @return [Types::DescribeAlarmsForMetricOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlarmsForMetricOutput#metric_alarms #metric_alarms} => Array&lt;Types::MetricAlarm&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarms_for_metric({
    #     metric_name: "MetricName", # required
    #     namespace: "Namespace", # required
    #     statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
    #     extended_statistic: "ExtendedStatistic",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       },
    #     ],
    #     period: 1,
    #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_alarms #=> Array
    #   resp.metric_alarms[0].alarm_name #=> String
    #   resp.metric_alarms[0].alarm_arn #=> String
    #   resp.metric_alarms[0].alarm_description #=> String
    #   resp.metric_alarms[0].alarm_configuration_updated_timestamp #=> Time
    #   resp.metric_alarms[0].actions_enabled #=> Boolean
    #   resp.metric_alarms[0].ok_actions #=> Array
    #   resp.metric_alarms[0].ok_actions[0] #=> String
    #   resp.metric_alarms[0].alarm_actions #=> Array
    #   resp.metric_alarms[0].alarm_actions[0] #=> String
    #   resp.metric_alarms[0].insufficient_data_actions #=> Array
    #   resp.metric_alarms[0].insufficient_data_actions[0] #=> String
    #   resp.metric_alarms[0].state_value #=> String, one of "OK", "ALARM", "INSUFFICIENT_DATA"
    #   resp.metric_alarms[0].state_reason #=> String
    #   resp.metric_alarms[0].state_reason_data #=> String
    #   resp.metric_alarms[0].state_updated_timestamp #=> Time
    #   resp.metric_alarms[0].metric_name #=> String
    #   resp.metric_alarms[0].namespace #=> String
    #   resp.metric_alarms[0].statistic #=> String, one of "SampleCount", "Average", "Sum", "Minimum", "Maximum"
    #   resp.metric_alarms[0].extended_statistic #=> String
    #   resp.metric_alarms[0].dimensions #=> Array
    #   resp.metric_alarms[0].dimensions[0].name #=> String
    #   resp.metric_alarms[0].dimensions[0].value #=> String
    #   resp.metric_alarms[0].period #=> Integer
    #   resp.metric_alarms[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.metric_alarms[0].evaluation_periods #=> Integer
    #   resp.metric_alarms[0].datapoints_to_alarm #=> Integer
    #   resp.metric_alarms[0].threshold #=> Float
    #   resp.metric_alarms[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"
    #   resp.metric_alarms[0].treat_missing_data #=> String
    #   resp.metric_alarms[0].evaluate_low_sample_count_percentile #=> String
    #   resp.metric_alarms[0].metrics #=> Array
    #   resp.metric_alarms[0].metrics[0].id #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.namespace #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.metric_name #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.dimensions #=> Array
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.period #=> Integer
    #   resp.metric_alarms[0].metrics[0].metric_stat.stat #=> String
    #   resp.metric_alarms[0].metrics[0].metric_stat.unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.metric_alarms[0].metrics[0].expression #=> String
    #   resp.metric_alarms[0].metrics[0].label #=> String
    #   resp.metric_alarms[0].metrics[0].return_data #=> Boolean
    #   resp.metric_alarms[0].metrics[0].period #=> Integer
    #   resp.metric_alarms[0].threshold_metric_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsForMetric AWS API Documentation
    #
    # @overload describe_alarms_for_metric(params = {})
    # @param [Hash] params ({})
    def describe_alarms_for_metric(params = {}, options = {})
      req = build_request(:describe_alarms_for_metric, params)
      req.send_request(options)
    end

    # Lists the anomaly detection models that you have created in your
    # account. You can list all models in your account or filter the results
    # to only the models that are related to a certain namespace, metric
    # name, or metric dimension.
    #
    # @option params [String] :next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. The maximum
    #   value that you can specify is 100.
    #
    #   To retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #
    # @option params [String] :namespace
    #   Limits the results to only the anomaly detection models that are
    #   associated with the specified namespace.
    #
    # @option params [String] :metric_name
    #   Limits the results to only the anomaly detection models that are
    #   associated with the specified metric name. If there are multiple
    #   metrics with this name in different namespaces that have anomaly
    #   detection models, they're all returned.
    #
    # @option params [Array<Types::Dimension>] :dimensions
    #   Limits the results to only the anomaly detection models that are
    #   associated with the specified metric dimensions. If there are multiple
    #   metrics that have these dimensions and have anomaly detection models
    #   associated, they're all returned.
    #
    # @return [Types::DescribeAnomalyDetectorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnomalyDetectorsOutput#anomaly_detectors #anomaly_detectors} => Array&lt;Types::AnomalyDetector&gt;
    #   * {Types::DescribeAnomalyDetectorsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly_detectors({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     namespace: "Namespace",
    #     metric_name: "MetricName",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.anomaly_detectors #=> Array
    #   resp.anomaly_detectors[0].namespace #=> String
    #   resp.anomaly_detectors[0].metric_name #=> String
    #   resp.anomaly_detectors[0].dimensions #=> Array
    #   resp.anomaly_detectors[0].dimensions[0].name #=> String
    #   resp.anomaly_detectors[0].dimensions[0].value #=> String
    #   resp.anomaly_detectors[0].stat #=> String
    #   resp.anomaly_detectors[0].configuration.excluded_time_ranges #=> Array
    #   resp.anomaly_detectors[0].configuration.excluded_time_ranges[0].start_time #=> Time
    #   resp.anomaly_detectors[0].configuration.excluded_time_ranges[0].end_time #=> Time
    #   resp.anomaly_detectors[0].configuration.metric_timezone #=> String
    #   resp.anomaly_detectors[0].state_value #=> String, one of "PENDING_TRAINING", "TRAINED_INSUFFICIENT_DATA", "TRAINED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAnomalyDetectors AWS API Documentation
    #
    # @overload describe_anomaly_detectors(params = {})
    # @param [Hash] params ({})
    def describe_anomaly_detectors(params = {}, options = {})
      req = build_request(:describe_anomaly_detectors, params)
      req.send_request(options)
    end

    # Returns a list of all the Contributor Insights rules in your account.
    # All rules in your account are returned with a single operation.
    #
    # For more information about Contributor Insights, see [Using
    # Contributor Insights to Analyze High-Cardinality Data][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @option params [Integer] :max_results
    #   This parameter is not currently used. Reserved for future use. If it
    #   is used in the future, the maximum value might be different.
    #
    # @return [Types::DescribeInsightRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInsightRulesOutput#next_token #next_token} => String
    #   * {Types::DescribeInsightRulesOutput#insight_rules #insight_rules} => Array&lt;Types::InsightRule&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_insight_rules({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.insight_rules #=> Array
    #   resp.insight_rules[0].name #=> String
    #   resp.insight_rules[0].state #=> String
    #   resp.insight_rules[0].schema #=> String
    #   resp.insight_rules[0].definition #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeInsightRules AWS API Documentation
    #
    # @overload describe_insight_rules(params = {})
    # @param [Hash] params ({})
    def describe_insight_rules(params = {}, options = {})
      req = build_request(:describe_insight_rules, params)
      req.send_request(options)
    end

    # Disables the actions for the specified alarms. When an alarm's
    # actions are disabled, the alarm actions do not execute when the alarm
    # state changes.
    #
    # @option params [required, Array<String>] :alarm_names
    #   The names of the alarms.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_alarm_actions({
    #     alarm_names: ["AlarmName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DisableAlarmActions AWS API Documentation
    #
    # @overload disable_alarm_actions(params = {})
    # @param [Hash] params ({})
    def disable_alarm_actions(params = {}, options = {})
      req = build_request(:disable_alarm_actions, params)
      req.send_request(options)
    end

    # Disables the specified Contributor Insights rules. When rules are
    # disabled, they do not analyze log groups and do not incur costs.
    #
    # @option params [required, Array<String>] :rule_names
    #   An array of the rule names to disable. If you need to find out the
    #   names of your rules, use [DescribeInsightRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html
    #
    # @return [Types::DisableInsightRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableInsightRulesOutput#failures #failures} => Array&lt;Types::PartialFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_insight_rules({
    #     rule_names: ["InsightRuleName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].failure_resource #=> String
    #   resp.failures[0].exception_type #=> String
    #   resp.failures[0].failure_code #=> String
    #   resp.failures[0].failure_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DisableInsightRules AWS API Documentation
    #
    # @overload disable_insight_rules(params = {})
    # @param [Hash] params ({})
    def disable_insight_rules(params = {}, options = {})
      req = build_request(:disable_insight_rules, params)
      req.send_request(options)
    end

    # Enables the actions for the specified alarms.
    #
    # @option params [required, Array<String>] :alarm_names
    #   The names of the alarms.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_alarm_actions({
    #     alarm_names: ["AlarmName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/EnableAlarmActions AWS API Documentation
    #
    # @overload enable_alarm_actions(params = {})
    # @param [Hash] params ({})
    def enable_alarm_actions(params = {}, options = {})
      req = build_request(:enable_alarm_actions, params)
      req.send_request(options)
    end

    # Enables the specified Contributor Insights rules. When rules are
    # enabled, they immediately begin analyzing log data.
    #
    # @option params [required, Array<String>] :rule_names
    #   An array of the rule names to enable. If you need to find out the
    #   names of your rules, use [DescribeInsightRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html
    #
    # @return [Types::EnableInsightRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableInsightRulesOutput#failures #failures} => Array&lt;Types::PartialFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_insight_rules({
    #     rule_names: ["InsightRuleName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].failure_resource #=> String
    #   resp.failures[0].exception_type #=> String
    #   resp.failures[0].failure_code #=> String
    #   resp.failures[0].failure_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/EnableInsightRules AWS API Documentation
    #
    # @overload enable_insight_rules(params = {})
    # @param [Hash] params ({})
    def enable_insight_rules(params = {}, options = {})
      req = build_request(:enable_insight_rules, params)
      req.send_request(options)
    end

    # Displays the details of the dashboard that you specify.
    #
    # To copy an existing dashboard, use `GetDashboard`, and then use the
    # data returned within `DashboardBody` as the template for the new
    # dashboard when you call `PutDashboard` to create the copy.
    #
    # @option params [required, String] :dashboard_name
    #   The name of the dashboard to be described.
    #
    # @return [Types::GetDashboardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDashboardOutput#dashboard_arn #dashboard_arn} => String
    #   * {Types::GetDashboardOutput#dashboard_body #dashboard_body} => String
    #   * {Types::GetDashboardOutput#dashboard_name #dashboard_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard({
    #     dashboard_name: "DashboardName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_arn #=> String
    #   resp.dashboard_body #=> String
    #   resp.dashboard_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetDashboard AWS API Documentation
    #
    # @overload get_dashboard(params = {})
    # @param [Hash] params ({})
    def get_dashboard(params = {}, options = {})
      req = build_request(:get_dashboard, params)
      req.send_request(options)
    end

    # This operation returns the time series data collected by a Contributor
    # Insights rule. The data includes the identity and number of
    # contributors to the log group.
    #
    # You can also optionally return one or more statistics about each data
    # point in the time series. These statistics can include the following:
    #
    # * `UniqueContributors` -- the number of unique contributors for each
    #   data point.
    #
    # * `MaxContributorValue` -- the value of the top contributor for each
    #   data point. The identity of the contributor might change for each
    #   data point in the graph.
    #
    #   If this rule aggregates by COUNT, the top contributor for each data
    #   point is the contributor with the most occurrences in that period.
    #   If the rule aggregates by SUM, the top contributor is the
    #   contributor with the highest sum in the log field specified by the
    #   rule's `Value`, during that period.
    #
    # * `SampleCount` -- the number of data points matched by the rule.
    #
    # * `Sum` -- the sum of the values from all contributors during the time
    #   period represented by that data point.
    #
    # * `Minimum` -- the minimum value from a single observation during the
    #   time period represented by that data point.
    #
    # * `Maximum` -- the maximum value from a single observation during the
    #   time period represented by that data point.
    #
    # * `Average` -- the average value from all contributors during the time
    #   period represented by that data point.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule that you want to see data from.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the data to use in the report. When used in a raw
    #   HTTP Query API, it is formatted as `yyyy-MM-dd'T'HH:mm:ss`. For
    #   example, `2019-07-01T23:59:59`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the data to use in the report. When used in a raw HTTP
    #   Query API, it is formatted as `yyyy-MM-dd'T'HH:mm:ss`. For example,
    #   `2019-07-01T23:59:59`.
    #
    # @option params [required, Integer] :period
    #   The period, in seconds, to use for the statistics in the
    #   `InsightRuleMetricDatapoint` results.
    #
    # @option params [Integer] :max_contributor_count
    #   The maximum number of contributors to include in the report. The range
    #   is 1 to 100. If you omit this, the default of 10 is used.
    #
    # @option params [Array<String>] :metrics
    #   Specifies which metrics to use for aggregation of contributor values
    #   for the report. You can specify one or more of the following metrics:
    #
    #   * `UniqueContributors` -- the number of unique contributors for each
    #     data point.
    #
    #   * `MaxContributorValue` -- the value of the top contributor for each
    #     data point. The identity of the contributor might change for each
    #     data point in the graph.
    #
    #     If this rule aggregates by COUNT, the top contributor for each data
    #     point is the contributor with the most occurrences in that period.
    #     If the rule aggregates by SUM, the top contributor is the
    #     contributor with the highest sum in the log field specified by the
    #     rule's `Value`, during that period.
    #
    #   * `SampleCount` -- the number of data points matched by the rule.
    #
    #   * `Sum` -- the sum of the values from all contributors during the time
    #     period represented by that data point.
    #
    #   * `Minimum` -- the minimum value from a single observation during the
    #     time period represented by that data point.
    #
    #   * `Maximum` -- the maximum value from a single observation during the
    #     time period represented by that data point.
    #
    #   * `Average` -- the average value from all contributors during the time
    #     period represented by that data point.
    #
    # @option params [String] :order_by
    #   Determines what statistic to use to rank the contributors. Valid
    #   values are SUM and MAXIMUM.
    #
    # @return [Types::GetInsightRuleReportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightRuleReportOutput#key_labels #key_labels} => Array&lt;String&gt;
    #   * {Types::GetInsightRuleReportOutput#aggregation_statistic #aggregation_statistic} => String
    #   * {Types::GetInsightRuleReportOutput#aggregate_value #aggregate_value} => Float
    #   * {Types::GetInsightRuleReportOutput#approximate_unique_count #approximate_unique_count} => Integer
    #   * {Types::GetInsightRuleReportOutput#contributors #contributors} => Array&lt;Types::InsightRuleContributor&gt;
    #   * {Types::GetInsightRuleReportOutput#metric_datapoints #metric_datapoints} => Array&lt;Types::InsightRuleMetricDatapoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_rule_report({
    #     rule_name: "InsightRuleName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     max_contributor_count: 1,
    #     metrics: ["InsightRuleMetricName"],
    #     order_by: "InsightRuleOrderBy",
    #   })
    #
    # @example Response structure
    #
    #   resp.key_labels #=> Array
    #   resp.key_labels[0] #=> String
    #   resp.aggregation_statistic #=> String
    #   resp.aggregate_value #=> Float
    #   resp.approximate_unique_count #=> Integer
    #   resp.contributors #=> Array
    #   resp.contributors[0].keys #=> Array
    #   resp.contributors[0].keys[0] #=> String
    #   resp.contributors[0].approximate_aggregate_value #=> Float
    #   resp.contributors[0].datapoints #=> Array
    #   resp.contributors[0].datapoints[0].timestamp #=> Time
    #   resp.contributors[0].datapoints[0].approximate_value #=> Float
    #   resp.metric_datapoints #=> Array
    #   resp.metric_datapoints[0].timestamp #=> Time
    #   resp.metric_datapoints[0].unique_contributors #=> Float
    #   resp.metric_datapoints[0].max_contributor_value #=> Float
    #   resp.metric_datapoints[0].sample_count #=> Float
    #   resp.metric_datapoints[0].average #=> Float
    #   resp.metric_datapoints[0].sum #=> Float
    #   resp.metric_datapoints[0].minimum #=> Float
    #   resp.metric_datapoints[0].maximum #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetInsightRuleReport AWS API Documentation
    #
    # @overload get_insight_rule_report(params = {})
    # @param [Hash] params ({})
    def get_insight_rule_report(params = {}, options = {})
      req = build_request(:get_insight_rule_report, params)
      req.send_request(options)
    end

    # You can use the `GetMetricData` API to retrieve as many as 500
    # different metrics in a single request, with a total of as many as
    # 100,800 data points. You can also optionally perform math expressions
    # on the values of the returned statistics, to create new time series
    # that represent new insights into your data. For example, using Lambda
    # metrics, you could divide the Errors metric by the Invocations metric
    # to get an error rate time series. For more information about metric
    # math expressions, see [Metric Math Syntax and Functions][1] in the
    # *Amazon CloudWatch User Guide*.
    #
    # Calls to the `GetMetricData` API have a different pricing structure
    # than calls to `GetMetricStatistics`. For more information about
    # pricing, see [Amazon CloudWatch Pricing][2].
    #
    # Amazon CloudWatch retains metric data as follows:
    #
    # * Data points with a period of less than 60 seconds are available for
    #   3 hours. These data points are high-resolution metrics and are
    #   available only for custom metrics that have been defined with a
    #   `StorageResolution` of 1.
    #
    # * Data points with a period of 60 seconds (1-minute) are available for
    #   15 days.
    #
    # * Data points with a period of 300 seconds (5-minute) are available
    #   for 63 days.
    #
    # * Data points with a period of 3600 seconds (1 hour) are available for
    #   455 days (15 months).
    #
    # Data points that are initially published with a shorter period are
    # aggregated together for long-term storage. For example, if you collect
    # data using a period of 1 minute, the data remains available for 15
    # days with 1-minute resolution. After 15 days, this data is still
    # available, but is aggregated and retrievable only with a resolution of
    # 5 minutes. After 63 days, the data is further aggregated and is
    # available with a resolution of 1 hour.
    #
    # If you omit `Unit` in your request, all data that was collected with
    # any unit is returned, along with the corresponding units that were
    # specified when the data was reported to CloudWatch. If you specify a
    # unit, the operation returns only data that was collected with that
    # unit specified. If you specify a unit that does not match the data
    # collected, the results of the operation are null. CloudWatch does not
    # perform unit conversions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax
    # [2]: https://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [required, Array<Types::MetricDataQuery>] :metric_data_queries
    #   The metric queries to be returned. A single `GetMetricData` call can
    #   include as many as 500 `MetricDataQuery` structures. Each of these
    #   structures can specify either a metric to retrieve, or a math
    #   expression to perform on retrieved data.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The time stamp indicating the earliest data to be returned.
    #
    #   The value specified is inclusive; results include data points with the
    #   specified time stamp.
    #
    #   CloudWatch rounds the specified time stamp as follows:
    #
    #   * Start time less than 15 days ago - Round down to the nearest whole
    #     minute. For example, 12:32:34 is rounded down to 12:32:00.
    #
    #   * Start time between 15 and 63 days ago - Round down to the nearest
    #     5-minute clock interval. For example, 12:32:34 is rounded down to
    #     12:30:00.
    #
    #   * Start time greater than 63 days ago - Round down to the nearest
    #     1-hour clock interval. For example, 12:32:34 is rounded down to
    #     12:00:00.
    #
    #   If you set `Period` to 5, 10, or 30, the start time of your request is
    #   rounded down to the nearest time that corresponds to even 5-, 10-, or
    #   30-second divisions of a minute. For example, if you make a query at
    #   (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time
    #   of your request is rounded down and you receive data from 01:05:10 to
    #   01:05:20. If you make a query at 15:07:17 for the previous 5 minutes
    #   of data, using a period of 5 seconds, you receive data timestamped
    #   between 15:02:15 and 15:07:15.
    #
    #   For better performance, specify `StartTime` and `EndTime` values that
    #   align with the value of the metric's `Period` and sync up with the
    #   beginning and end of an hour. For example, if the `Period` of a metric
    #   is 5 minutes, specifying 12:05 or 12:30 as `StartTime` can get a
    #   faster response from CloudWatch than setting 12:07 or 12:29 as the
    #   `StartTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The time stamp indicating the latest data to be returned.
    #
    #   The value specified is exclusive; results include data points up to
    #   the specified time stamp.
    #
    #   For better performance, specify `StartTime` and `EndTime` values that
    #   align with the value of the metric's `Period` and sync up with the
    #   beginning and end of an hour. For example, if the `Period` of a metric
    #   is 5 minutes, specifying 12:05 or 12:30 as `EndTime` can get a faster
    #   response from CloudWatch than setting 12:07 or 12:29 as the `EndTime`.
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous call, to get
    #   the next set of data points.
    #
    # @option params [String] :scan_by
    #   The order in which data points should be returned.
    #   `TimestampDescending` returns the newest data first and paginates when
    #   the `MaxDatapoints` limit is reached. `TimestampAscending` returns the
    #   oldest data first and paginates when the `MaxDatapoints` limit is
    #   reached.
    #
    # @option params [Integer] :max_datapoints
    #   The maximum number of data points the request should return before
    #   paginating. If you omit this, the default of 100,800 is used.
    #
    # @return [Types::GetMetricDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricDataOutput#metric_data_results #metric_data_results} => Array&lt;Types::MetricDataResult&gt;
    #   * {Types::GetMetricDataOutput#next_token #next_token} => String
    #   * {Types::GetMetricDataOutput#messages #messages} => Array&lt;Types::MessageData&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data({
    #     metric_data_queries: [ # required
    #       {
    #         id: "MetricId", # required
    #         metric_stat: {
    #           metric: { # required
    #             namespace: "Namespace",
    #             metric_name: "MetricName",
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               },
    #             ],
    #           },
    #           period: 1, # required
    #           stat: "Stat", # required
    #           unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         },
    #         expression: "MetricExpression",
    #         label: "MetricLabel",
    #         return_data: false,
    #         period: 1,
    #       },
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "NextToken",
    #     scan_by: "TimestampDescending", # accepts TimestampDescending, TimestampAscending
    #     max_datapoints: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_data_results #=> Array
    #   resp.metric_data_results[0].id #=> String
    #   resp.metric_data_results[0].label #=> String
    #   resp.metric_data_results[0].timestamps #=> Array
    #   resp.metric_data_results[0].timestamps[0] #=> Time
    #   resp.metric_data_results[0].values #=> Array
    #   resp.metric_data_results[0].values[0] #=> Float
    #   resp.metric_data_results[0].status_code #=> String, one of "Complete", "InternalError", "PartialData"
    #   resp.metric_data_results[0].messages #=> Array
    #   resp.metric_data_results[0].messages[0].code #=> String
    #   resp.metric_data_results[0].messages[0].value #=> String
    #   resp.next_token #=> String
    #   resp.messages #=> Array
    #   resp.messages[0].code #=> String
    #   resp.messages[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricData AWS API Documentation
    #
    # @overload get_metric_data(params = {})
    # @param [Hash] params ({})
    def get_metric_data(params = {}, options = {})
      req = build_request(:get_metric_data, params)
      req.send_request(options)
    end

    # Gets statistics for the specified metric.
    #
    # The maximum number of data points returned from a single call is
    # 1,440. If you request more than 1,440 data points, CloudWatch returns
    # an error. To reduce the number of data points, you can narrow the
    # specified time range and make multiple requests across adjacent time
    # ranges, or you can increase the specified period. Data points are not
    # returned in chronological order.
    #
    # CloudWatch aggregates data points based on the length of the period
    # that you specify. For example, if you request statistics with a
    # one-hour period, CloudWatch aggregates all data points with time
    # stamps that fall within each one-hour period. Therefore, the number of
    # values aggregated by CloudWatch is larger than the number of data
    # points returned.
    #
    # CloudWatch needs raw data points to calculate percentile statistics.
    # If you publish data using a statistic set instead, you can only
    # retrieve percentile statistics for this data if one of the following
    # conditions is true:
    #
    # * The SampleCount value of the statistic set is 1.
    #
    # * The Min and the Max values of the statistic set are equal.
    #
    # Percentile statistics are not available for metrics when any of the
    # metric values are negative numbers.
    #
    # Amazon CloudWatch retains metric data as follows:
    #
    # * Data points with a period of less than 60 seconds are available for
    #   3 hours. These data points are high-resolution metrics and are
    #   available only for custom metrics that have been defined with a
    #   `StorageResolution` of 1.
    #
    # * Data points with a period of 60 seconds (1-minute) are available for
    #   15 days.
    #
    # * Data points with a period of 300 seconds (5-minute) are available
    #   for 63 days.
    #
    # * Data points with a period of 3600 seconds (1 hour) are available for
    #   455 days (15 months).
    #
    # Data points that are initially published with a shorter period are
    # aggregated together for long-term storage. For example, if you collect
    # data using a period of 1 minute, the data remains available for 15
    # days with 1-minute resolution. After 15 days, this data is still
    # available, but is aggregated and retrievable only with a resolution of
    # 5 minutes. After 63 days, the data is further aggregated and is
    # available with a resolution of 1 hour.
    #
    # CloudWatch started retaining 5-minute and 1-hour metric data as of
    # July 9, 2016.
    #
    # For information about metrics and dimensions supported by AWS
    # services, see the [Amazon CloudWatch Metrics and Dimensions
    # Reference][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html
    #
    # @option params [required, String] :namespace
    #   The namespace of the metric, with or without spaces.
    #
    # @option params [required, String] :metric_name
    #   The name of the metric, with or without spaces.
    #
    # @option params [Array<Types::Dimension>] :dimensions
    #   The dimensions. If the metric contains multiple dimensions, you must
    #   include a value for each dimension. CloudWatch treats each unique
    #   combination of dimensions as a separate metric. If a specific
    #   combination of dimensions was not published, you can't retrieve
    #   statistics for it. You must specify the same dimensions that were used
    #   when the metrics were created. For an example, see [Dimension
    #   Combinations][1] in the *Amazon CloudWatch User Guide*. For more
    #   information about specifying dimensions, see [Publishing Metrics][2]
    #   in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The time stamp that determines the first data point to return. Start
    #   times are evaluated relative to the time that CloudWatch receives the
    #   request.
    #
    #   The value specified is inclusive; results include data points with the
    #   specified time stamp. In a raw HTTP query, the time stamp must be in
    #   ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).
    #
    #   CloudWatch rounds the specified time stamp as follows:
    #
    #   * Start time less than 15 days ago - Round down to the nearest whole
    #     minute. For example, 12:32:34 is rounded down to 12:32:00.
    #
    #   * Start time between 15 and 63 days ago - Round down to the nearest
    #     5-minute clock interval. For example, 12:32:34 is rounded down to
    #     12:30:00.
    #
    #   * Start time greater than 63 days ago - Round down to the nearest
    #     1-hour clock interval. For example, 12:32:34 is rounded down to
    #     12:00:00.
    #
    #   If you set `Period` to 5, 10, or 30, the start time of your request is
    #   rounded down to the nearest time that corresponds to even 5-, 10-, or
    #   30-second divisions of a minute. For example, if you make a query at
    #   (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time
    #   of your request is rounded down and you receive data from 01:05:10 to
    #   01:05:20. If you make a query at 15:07:17 for the previous 5 minutes
    #   of data, using a period of 5 seconds, you receive data timestamped
    #   between 15:02:15 and 15:07:15.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The time stamp that determines the last data point to return.
    #
    #   The value specified is exclusive; results include data points up to
    #   the specified time stamp. In a raw HTTP query, the time stamp must be
    #   in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).
    #
    # @option params [required, Integer] :period
    #   The granularity, in seconds, of the returned data points. For metrics
    #   with regular resolution, a period can be as short as one minute (60
    #   seconds) and must be a multiple of 60. For high-resolution metrics
    #   that are collected at intervals of less than one minute, the period
    #   can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution
    #   metrics are those metrics stored by a `PutMetricData` call that
    #   includes a `StorageResolution` of 1 second.
    #
    #   If the `StartTime` parameter specifies a time stamp that is greater
    #   than 3 hours ago, you must specify the period as follows or no data
    #   points in that time range is returned:
    #
    #   * Start time between 3 hours and 15 days ago - Use a multiple of 60
    #     seconds (1 minute).
    #
    #   * Start time between 15 and 63 days ago - Use a multiple of 300
    #     seconds (5 minutes).
    #
    #   * Start time greater than 63 days ago - Use a multiple of 3600 seconds
    #     (1 hour).
    #
    # @option params [Array<String>] :statistics
    #   The metric statistics, other than percentile. For percentile
    #   statistics, use `ExtendedStatistics`. When calling
    #   `GetMetricStatistics`, you must specify either `Statistics` or
    #   `ExtendedStatistics`, but not both.
    #
    # @option params [Array<String>] :extended_statistics
    #   The percentile statistics. Specify values between p0.0 and p100. When
    #   calling `GetMetricStatistics`, you must specify either `Statistics` or
    #   `ExtendedStatistics`, but not both. Percentile statistics are not
    #   available for metrics when any of the metric values are negative
    #   numbers.
    #
    # @option params [String] :unit
    #   The unit for a given metric. If you omit `Unit`, all data that was
    #   collected with any unit is returned, along with the corresponding
    #   units that were specified when the data was reported to CloudWatch. If
    #   you specify a unit, the operation returns only data that was collected
    #   with that unit specified. If you specify a unit that does not match
    #   the data collected, the results of the operation are null. CloudWatch
    #   does not perform unit conversions.
    #
    # @return [Types::GetMetricStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricStatisticsOutput#label #label} => String
    #   * {Types::GetMetricStatisticsOutput#datapoints #datapoints} => Array&lt;Types::Datapoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_statistics({
    #     namespace: "Namespace", # required
    #     metric_name: "MetricName", # required
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       },
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     statistics: ["SampleCount"], # accepts SampleCount, Average, Sum, Minimum, Maximum
    #     extended_statistics: ["ExtendedStatistic"],
    #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #   })
    #
    # @example Response structure
    #
    #   resp.label #=> String
    #   resp.datapoints #=> Array
    #   resp.datapoints[0].timestamp #=> Time
    #   resp.datapoints[0].sample_count #=> Float
    #   resp.datapoints[0].average #=> Float
    #   resp.datapoints[0].sum #=> Float
    #   resp.datapoints[0].minimum #=> Float
    #   resp.datapoints[0].maximum #=> Float
    #   resp.datapoints[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.datapoints[0].extended_statistics #=> Hash
    #   resp.datapoints[0].extended_statistics["ExtendedStatistic"] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricStatistics AWS API Documentation
    #
    # @overload get_metric_statistics(params = {})
    # @param [Hash] params ({})
    def get_metric_statistics(params = {}, options = {})
      req = build_request(:get_metric_statistics, params)
      req.send_request(options)
    end

    # You can use the `GetMetricWidgetImage` API to retrieve a snapshot
    # graph of one or more Amazon CloudWatch metrics as a bitmap image. You
    # can then embed this image into your services and products, such as
    # wiki pages, reports, and documents. You could also retrieve images
    # regularly, such as every minute, and create your own custom live
    # dashboard.
    #
    # The graph you retrieve can include all CloudWatch metric graph
    # features, including metric math and horizontal and vertical
    # annotations.
    #
    # There is a limit of 20 transactions per second for this API. Each
    # `GetMetricWidgetImage` action has the following limits:
    #
    # * As many as 100 metrics in the graph.
    #
    # * Up to 100 KB uncompressed payload.
    #
    # @option params [required, String] :metric_widget
    #   A JSON string that defines the bitmap graph to be retrieved. The
    #   string includes the metrics to include in the graph, statistics,
    #   annotations, title, axis limits, and so on. You can include only one
    #   `MetricWidget` parameter in each `GetMetricWidgetImage` call.
    #
    #   For more information about the syntax of `MetricWidget` see
    #   [GetMetricWidgetImage: Metric Widget Structure and Syntax][1].
    #
    #   If any metric on the graph could not load all the requested data
    #   points, an orange triangle with an exclamation point appears next to
    #   the graph legend.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Metric-Widget-Structure.html
    #
    # @option params [String] :output_format
    #   The format of the resulting image. Only PNG images are supported.
    #
    #   The default is `png`. If you specify `png`, the API returns an HTTP
    #   response with the content-type set to `text/xml`. The image data is in
    #   a `MetricWidgetImage` field. For example:
    #
    #   ` <GetMetricWidgetImageResponse xmlns=<URLstring>>`
    #
    #   ` <GetMetricWidgetImageResult>`
    #
    #   ` <MetricWidgetImage>`
    #
    #   ` iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...`
    #
    #   ` </MetricWidgetImage>`
    #
    #   ` </GetMetricWidgetImageResult>`
    #
    #   ` <ResponseMetadata>`
    #
    #   ` <RequestId>6f0d4192-4d42-11e8-82c1-f539a07e0e3b</RequestId>`
    #
    #   ` </ResponseMetadata>`
    #
    #   `</GetMetricWidgetImageResponse>`
    #
    #   The `image/png` setting is intended only for custom HTTP requests. For
    #   most use cases, and all actions using an AWS SDK, you should use
    #   `png`. If you specify `image/png`, the HTTP response has a
    #   content-type set to `image/png`, and the body of the response is a PNG
    #   image.
    #
    # @return [Types::GetMetricWidgetImageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricWidgetImageOutput#metric_widget_image #metric_widget_image} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_widget_image({
    #     metric_widget: "MetricWidget", # required
    #     output_format: "OutputFormat",
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_widget_image #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricWidgetImage AWS API Documentation
    #
    # @overload get_metric_widget_image(params = {})
    # @param [Hash] params ({})
    def get_metric_widget_image(params = {}, options = {})
      req = build_request(:get_metric_widget_image, params)
      req.send_request(options)
    end

    # Returns a list of the dashboards for your account. If you include
    # `DashboardNamePrefix`, only those dashboards with names starting with
    # the prefix are listed. Otherwise, all dashboards in your account are
    # listed.
    #
    # `ListDashboards` returns up to 1000 results on one page. If there are
    # more than 1000 dashboards, you can call `ListDashboards` again and
    # include the value you received for `NextToken` in the first call, to
    # receive the next 1000 results.
    #
    # @option params [String] :dashboard_name_prefix
    #   If you specify this parameter, only the dashboards with names starting
    #   with the specified string are listed. The maximum length is 255, and
    #   valid characters are A-Z, a-z, 0-9, ".", "-", and "\_".
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #
    # @return [Types::ListDashboardsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardsOutput#dashboard_entries #dashboard_entries} => Array&lt;Types::DashboardEntry&gt;
    #   * {Types::ListDashboardsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards({
    #     dashboard_name_prefix: "DashboardNamePrefix",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_entries #=> Array
    #   resp.dashboard_entries[0].dashboard_name #=> String
    #   resp.dashboard_entries[0].dashboard_arn #=> String
    #   resp.dashboard_entries[0].last_modified #=> Time
    #   resp.dashboard_entries[0].size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListDashboards AWS API Documentation
    #
    # @overload list_dashboards(params = {})
    # @param [Hash] params ({})
    def list_dashboards(params = {}, options = {})
      req = build_request(:list_dashboards, params)
      req.send_request(options)
    end

    # List the specified metrics. You can use the returned metrics with
    # [GetMetricData][1] or [GetMetricStatistics][2] to obtain statistical
    # data.
    #
    # Up to 500 results are returned for any one call. To retrieve
    # additional results, use the returned token with subsequent calls.
    #
    # After you create a metric, allow up to 15 minutes before the metric
    # appears. You can see statistics about the metric sooner by using
    # [GetMetricData][1] or [GetMetricStatistics][2].
    #
    # `ListMetrics` doesn't return information about metrics if those
    # metrics haven't reported data in the past two weeks. To retrieve
    # those metrics, use [GetMetricData][1] or [GetMetricStatistics][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html
    #
    # @option params [String] :namespace
    #   The namespace to filter against.
    #
    # @option params [String] :metric_name
    #   The name of the metric to filter against.
    #
    # @option params [Array<Types::DimensionFilter>] :dimensions
    #   The dimensions to filter against.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #
    # @option params [String] :recently_active
    #   To filter the results to show only metrics that have had data points
    #   published in the past three hours, specify this parameter with a value
    #   of `PT3H`. This is the only valid value for this parameter.
    #
    #   The results that are returned are an approximation of the value you
    #   specify. There is a low probability that the returned results include
    #   metrics with last published data as much as 40 minutes more than the
    #   specified time interval.
    #
    # @return [Types::ListMetricsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMetricsOutput#metrics #metrics} => Array&lt;Types::Metric&gt;
    #   * {Types::ListMetricsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metrics({
    #     namespace: "Namespace",
    #     metric_name: "MetricName",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue",
    #       },
    #     ],
    #     next_token: "NextToken",
    #     recently_active: "PT3H", # accepts PT3H
    #   })
    #
    # @example Response structure
    #
    #   resp.metrics #=> Array
    #   resp.metrics[0].namespace #=> String
    #   resp.metrics[0].metric_name #=> String
    #   resp.metrics[0].dimensions #=> Array
    #   resp.metrics[0].dimensions[0].name #=> String
    #   resp.metrics[0].dimensions[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListMetrics AWS API Documentation
    #
    # @overload list_metrics(params = {})
    # @param [Hash] params ({})
    def list_metrics(params = {}, options = {})
      req = build_request(:list_metrics, params)
      req.send_request(options)
    end

    # Displays the tags associated with a CloudWatch resource. Currently,
    # alarms and Contributor Insights rules support tagging.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch resource that you want to view tags for.
    #
    #   The ARN format of an alarm is
    #   `arn:aws:cloudwatch:Region:account-id:alarm:alarm-name `
    #
    #   The ARN format of a Contributor Insights rule is
    #   `arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined by
    #   Amazon CloudWatch][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates an anomaly detection model for a CloudWatch metric. You can
    # use the model to display a band of expected normal values when the
    # metric is graphed.
    #
    # For more information, see [CloudWatch Anomaly Detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html
    #
    # @option params [required, String] :namespace
    #   The namespace of the metric to create the anomaly detection model for.
    #
    # @option params [required, String] :metric_name
    #   The name of the metric to create the anomaly detection model for.
    #
    # @option params [Array<Types::Dimension>] :dimensions
    #   The metric dimensions to create the anomaly detection model for.
    #
    # @option params [required, String] :stat
    #   The statistic to use for the metric and the anomaly detection model.
    #
    # @option params [Types::AnomalyDetectorConfiguration] :configuration
    #   The configuration specifies details about how the anomaly detection
    #   model is to be trained, including time ranges to exclude when training
    #   and updating the model. You can specify as many as 10 time ranges.
    #
    #   The configuration can also include the time zone to use for the
    #   metric.
    #
    #   You can in
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_anomaly_detector({
    #     namespace: "Namespace", # required
    #     metric_name: "MetricName", # required
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       },
    #     ],
    #     stat: "AnomalyDetectorMetricStat", # required
    #     configuration: {
    #       excluded_time_ranges: [
    #         {
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #       ],
    #       metric_timezone: "AnomalyDetectorMetricTimezone",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutAnomalyDetector AWS API Documentation
    #
    # @overload put_anomaly_detector(params = {})
    # @param [Hash] params ({})
    def put_anomaly_detector(params = {}, options = {})
      req = build_request(:put_anomaly_detector, params)
      req.send_request(options)
    end

    # Creates or updates a *composite alarm*. When you create a composite
    # alarm, you specify a rule expression for the alarm that takes into
    # account the alarm states of other alarms that you have created. The
    # composite alarm goes into ALARM state only if all conditions of the
    # rule are met.
    #
    # The alarms specified in a composite alarm's rule expression can
    # include metric alarms and other composite alarms.
    #
    # Using composite alarms can reduce alarm noise. You can create multiple
    # metric alarms, and also create a composite alarm and set up alerts
    # only for the composite alarm. For example, you could create a
    # composite alarm that goes into ALARM state only when more than one of
    # the underlying metric alarms are in ALARM state.
    #
    # Currently, the only alarm actions that can be taken by composite
    # alarms are notifying SNS topics.
    #
    # <note markdown="1"> It is possible to create a loop or cycle of composite alarms, where
    # composite alarm A depends on composite alarm B, and composite alarm B
    # also depends on composite alarm A. In this scenario, you can't delete
    # any composite alarm that is part of the cycle because there is always
    # still a composite alarm that depends on that alarm that you want to
    # delete.
    #
    #  To get out of such a situation, you must break the cycle by changing
    # the rule of one of the composite alarms in the cycle to remove a
    # dependency that creates the cycle. The simplest change to make to
    # break a cycle is to change the `AlarmRule` of one of the alarms to
    # `False`.
    #
    #  Additionally, the evaluation of composite alarms stops if CloudWatch
    # detects a cycle in the evaluation path.
    #
    #  </note>
    #
    # When this operation creates an alarm, the alarm state is immediately
    # set to `INSUFFICIENT_DATA`. The alarm is then evaluated and its state
    # is set appropriately. Any actions associated with the new state are
    # then executed. For a composite alarm, this initial time after creation
    # is the only time that the alarm can be in `INSUFFICIENT_DATA` state.
    #
    # When you update an existing alarm, its state is left unchanged, but
    # the update completely overwrites the previous configuration of the
    # alarm.
    #
    # @option params [Boolean] :actions_enabled
    #   Indicates whether actions should be executed during any changes to the
    #   alarm state of the composite alarm. The default is `TRUE`.
    #
    # @option params [Array<String>] :alarm_actions
    #   The actions to execute when this alarm transitions to the `ALARM`
    #   state from any other state. Each action is specified as an Amazon
    #   Resource Name (ARN).
    #
    #   Valid Values: `arn:aws:sns:region:account-id:sns-topic-name `
    #
    # @option params [String] :alarm_description
    #   The description for the composite alarm.
    #
    # @option params [required, String] :alarm_name
    #   The name for the composite alarm. This name must be unique within the
    #   Region.
    #
    # @option params [required, String] :alarm_rule
    #   An expression that specifies which other alarms are to be evaluated to
    #   determine this composite alarm's state. For each alarm that you
    #   reference, you designate a function that specifies whether that alarm
    #   needs to be in ALARM state, OK state, or INSUFFICIENT\_DATA state. You
    #   can use operators (AND, OR and NOT) to combine multiple functions in a
    #   single expression. You can use parenthesis to logically group the
    #   functions in your expression.
    #
    #   You can use either alarm names or ARNs to reference the other alarms
    #   that are to be evaluated.
    #
    #   Functions can include the following:
    #
    #   * `ALARM("alarm-name or alarm-ARN")` is TRUE if the named alarm is in
    #     ALARM state.
    #
    #   * `OK("alarm-name or alarm-ARN")` is TRUE if the named alarm is in OK
    #     state.
    #
    #   * `INSUFFICIENT_DATA("alarm-name or alarm-ARN")` is TRUE if the named
    #     alarm is in INSUFFICIENT\_DATA state.
    #
    #   * `TRUE` always evaluates to TRUE.
    #
    #   * `FALSE` always evaluates to FALSE.
    #
    #   TRUE and FALSE are useful for testing a complex `AlarmRule` structure,
    #   and for testing your alarm actions.
    #
    #   Alarm names specified in `AlarmRule` can be surrounded with
    #   double-quotes ("), but do not have to be.
    #
    #   The following are some examples of `AlarmRule`\:
    #
    #   * `ALARM(CPUUtilizationTooHigh) AND ALARM(DiskReadOpsTooHigh)`
    #     specifies that the composite alarm goes into ALARM state only if
    #     both CPUUtilizationTooHigh and DiskReadOpsTooHigh alarms are in
    #     ALARM state.
    #
    #   * `ALARM(CPUUtilizationTooHigh) AND NOT ALARM(DeploymentInProgress)`
    #     specifies that the alarm goes to ALARM state if
    #     CPUUtilizationTooHigh is in ALARM state and DeploymentInProgress is
    #     not in ALARM state. This example reduces alarm noise during a known
    #     deployment window.
    #
    #   * `(ALARM(CPUUtilizationTooHigh) OR ALARM(DiskReadOpsTooHigh)) AND
    #     OK(NetworkOutTooHigh)` goes into ALARM state if
    #     CPUUtilizationTooHigh OR DiskReadOpsTooHigh is in ALARM state, and
    #     if NetworkOutTooHigh is in OK state. This provides another example
    #     of using a composite alarm to prevent noise. This rule ensures that
    #     you are not notified with an alarm action on high CPU or disk usage
    #     if a known network problem is also occurring.
    #
    #   The `AlarmRule` can specify as many as 100 "children" alarms. The
    #   `AlarmRule` expression can have as many as 500 elements. Elements are
    #   child alarms, TRUE or FALSE statements, and parentheses.
    #
    # @option params [Array<String>] :insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   `INSUFFICIENT_DATA` state from any other state. Each action is
    #   specified as an Amazon Resource Name (ARN).
    #
    #   Valid Values: `arn:aws:sns:region:account-id:sns-topic-name `
    #
    # @option params [Array<String>] :ok_actions
    #   The actions to execute when this alarm transitions to an `OK` state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #
    #   Valid Values: `arn:aws:sns:region:account-id:sns-topic-name `
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to associate with the composite alarm. You
    #   can associate as many as 50 tags with an alarm.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions, by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_composite_alarm({
    #     actions_enabled: false,
    #     alarm_actions: ["ResourceName"],
    #     alarm_description: "AlarmDescription",
    #     alarm_name: "AlarmName", # required
    #     alarm_rule: "AlarmRule", # required
    #     insufficient_data_actions: ["ResourceName"],
    #     ok_actions: ["ResourceName"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutCompositeAlarm AWS API Documentation
    #
    # @overload put_composite_alarm(params = {})
    # @param [Hash] params ({})
    def put_composite_alarm(params = {}, options = {})
      req = build_request(:put_composite_alarm, params)
      req.send_request(options)
    end

    # Creates a dashboard if it does not already exist, or updates an
    # existing dashboard. If you update a dashboard, the entire contents are
    # replaced with what you specify here.
    #
    # All dashboards in your account are global, not region-specific.
    #
    # A simple way to create a dashboard using `PutDashboard` is to copy an
    # existing dashboard. To copy an existing dashboard using the console,
    # you can load the dashboard and then use the View/edit source command
    # in the Actions menu to display the JSON block for that dashboard.
    # Another way to copy a dashboard is to use `GetDashboard`, and then use
    # the data returned within `DashboardBody` as the template for the new
    # dashboard when you call `PutDashboard`.
    #
    # When you create a dashboard with `PutDashboard`, a good practice is to
    # add a text widget at the top of the dashboard with a message that the
    # dashboard was created by script and should not be changed in the
    # console. This message could also point console users to the location
    # of the `DashboardBody` script or the CloudFormation template used to
    # create the dashboard.
    #
    # @option params [required, String] :dashboard_name
    #   The name of the dashboard. If a dashboard with this name already
    #   exists, this call modifies that dashboard, replacing its current
    #   contents. Otherwise, a new dashboard is created. The maximum length is
    #   255, and valid characters are A-Z, a-z, 0-9, "-", and "\_". This
    #   parameter is required.
    #
    # @option params [required, String] :dashboard_body
    #   The detailed information about the dashboard in JSON format, including
    #   the widgets to include and their location on the dashboard. This
    #   parameter is required.
    #
    #   For more information about the syntax, see [Dashboard Body Structure
    #   and Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html
    #
    # @return [Types::PutDashboardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDashboardOutput#dashboard_validation_messages #dashboard_validation_messages} => Array&lt;Types::DashboardValidationMessage&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dashboard({
    #     dashboard_name: "DashboardName", # required
    #     dashboard_body: "DashboardBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_validation_messages #=> Array
    #   resp.dashboard_validation_messages[0].data_path #=> String
    #   resp.dashboard_validation_messages[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutDashboard AWS API Documentation
    #
    # @overload put_dashboard(params = {})
    # @param [Hash] params ({})
    def put_dashboard(params = {}, options = {})
      req = build_request(:put_dashboard, params)
      req.send_request(options)
    end

    # Creates a Contributor Insights rule. Rules evaluate log events in a
    # CloudWatch Logs log group, enabling you to find contributor data for
    # the log events in that log group. For more information, see [Using
    # Contributor Insights to Analyze High-Cardinality Data][1].
    #
    # If you create a rule, delete it, and then re-create it with the same
    # name, historical data from the first time the rule was created might
    # not be available.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html
    #
    # @option params [required, String] :rule_name
    #   A unique name for the rule.
    #
    # @option params [String] :rule_state
    #   The state of the rule. Valid values are ENABLED and DISABLED.
    #
    # @option params [required, String] :rule_definition
    #   The definition of the rule, as a JSON object. For details on the valid
    #   syntax, see [Contributor Insights Rule Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to associate with the Contributor Insights
    #   rule. You can associate as many as 50 tags with a rule.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions, by granting a user permission to
    #   access or change only the resources that have certain tag values.
    #
    #   To be able to associate tags with a rule, you must have the
    #   `cloudwatch:TagResource` permission in addition to the
    #   `cloudwatch:PutInsightRule` permission.
    #
    #   If you are using this operation to update an existing Contributor
    #   Insights rule, any tags you specify in this parameter are ignored. To
    #   change the tags of an existing rule, use [TagResource][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_insight_rule({
    #     rule_name: "InsightRuleName", # required
    #     rule_state: "InsightRuleState",
    #     rule_definition: "InsightRuleDefinition", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutInsightRule AWS API Documentation
    #
    # @overload put_insight_rule(params = {})
    # @param [Hash] params ({})
    def put_insight_rule(params = {}, options = {})
      req = build_request(:put_insight_rule, params)
      req.send_request(options)
    end

    # Creates or updates an alarm and associates it with the specified
    # metric, metric math expression, or anomaly detection model.
    #
    # Alarms based on anomaly detection models cannot have Auto Scaling
    # actions.
    #
    # When this operation creates an alarm, the alarm state is immediately
    # set to `INSUFFICIENT_DATA`. The alarm is then evaluated and its state
    # is set appropriately. Any actions associated with the new state are
    # then executed.
    #
    # When you update an existing alarm, its state is left unchanged, but
    # the update completely overwrites the previous configuration of the
    # alarm.
    #
    # If you are an IAM user, you must have Amazon EC2 permissions for some
    # alarm operations:
    #
    # * `iam:CreateServiceLinkedRole` for all alarms with EC2 actions
    #
    # * `ec2:DescribeInstanceStatus` and `ec2:DescribeInstances` for all
    #   alarms on EC2 instance status metrics
    #
    # * `ec2:StopInstances` for alarms with stop actions
    #
    # * `ec2:TerminateInstances` for alarms with terminate actions
    #
    # * No specific permissions are needed for alarms with recover actions
    #
    # If you have read/write permissions for Amazon CloudWatch but not for
    # Amazon EC2, you can still create an alarm, but the stop or terminate
    # actions are not performed. However, if you are later granted the
    # required permissions, the alarm actions that you created earlier are
    # performed.
    #
    # If you are using an IAM role (for example, an EC2 instance profile),
    # you cannot stop or terminate the instance using alarm actions.
    # However, you can still see the alarm state and perform any other
    # actions such as Amazon SNS notifications or Auto Scaling policies.
    #
    # If you are using temporary security credentials granted using AWS STS,
    # you cannot stop or terminate an EC2 instance using alarm actions.
    #
    # The first time you create an alarm in the AWS Management Console, the
    # CLI, or by using the PutMetricAlarm API, CloudWatch creates the
    # necessary service-linked role for you. The service-linked role is
    # called `AWSServiceRoleForCloudWatchEvents`. For more information, see
    # [AWS service-linked role][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role
    #
    # @option params [required, String] :alarm_name
    #   The name for the alarm. This name must be unique within the Region.
    #
    # @option params [String] :alarm_description
    #   The description for the alarm.
    #
    # @option params [Boolean] :actions_enabled
    #   Indicates whether actions should be executed during any changes to the
    #   alarm state. The default is `TRUE`.
    #
    # @option params [Array<String>] :ok_actions
    #   The actions to execute when this alarm transitions to an `OK` state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #
    #   Valid Values: `arn:aws:automate:region:ec2:stop` \|
    #   `arn:aws:automate:region:ec2:terminate` \|
    #   `arn:aws:automate:region:ec2:recover` \|
    #   `arn:aws:automate:region:ec2:reboot` \|
    #   `arn:aws:sns:region:account-id:sns-topic-name ` \|
    #   `arn:aws:autoscaling:region:account-id:scalingPolicy:policy-id:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name
    #   `
    #
    #   Valid Values (for use with IAM roles):
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0`
    #
    # @option params [Array<String>] :alarm_actions
    #   The actions to execute when this alarm transitions to the `ALARM`
    #   state from any other state. Each action is specified as an Amazon
    #   Resource Name (ARN).
    #
    #   Valid Values: `arn:aws:automate:region:ec2:stop` \|
    #   `arn:aws:automate:region:ec2:terminate` \|
    #   `arn:aws:automate:region:ec2:recover` \|
    #   `arn:aws:automate:region:ec2:reboot` \|
    #   `arn:aws:sns:region:account-id:sns-topic-name ` \|
    #   `arn:aws:autoscaling:region:account-id:scalingPolicy:policy-id:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name
    #   `
    #
    #   Valid Values (for use with IAM roles):
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0`
    #
    # @option params [Array<String>] :insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   `INSUFFICIENT_DATA` state from any other state. Each action is
    #   specified as an Amazon Resource Name (ARN).
    #
    #   Valid Values: `arn:aws:automate:region:ec2:stop` \|
    #   `arn:aws:automate:region:ec2:terminate` \|
    #   `arn:aws:automate:region:ec2:recover` \|
    #   `arn:aws:automate:region:ec2:reboot` \|
    #   `arn:aws:sns:region:account-id:sns-topic-name ` \|
    #   `arn:aws:autoscaling:region:account-id:scalingPolicy:policy-id:autoScalingGroupName/group-friendly-name:policyName/policy-friendly-name
    #   `
    #
    #   Valid Values (for use with IAM roles):
    #   `>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0`
    #
    # @option params [String] :metric_name
    #   The name for the metric associated with the alarm. For each
    #   `PutMetricAlarm` operation, you must specify either `MetricName` or a
    #   `Metrics` array.
    #
    #   If you are creating an alarm based on a math expression, you cannot
    #   specify this parameter, or any of the `Dimensions`, `Period`,
    #   `Namespace`, `Statistic`, or `ExtendedStatistic` parameters. Instead,
    #   you specify all this information in the `Metrics` array.
    #
    # @option params [String] :namespace
    #   The namespace for the metric associated specified in `MetricName`.
    #
    # @option params [String] :statistic
    #   The statistic for the metric specified in `MetricName`, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`. When
    #   you call `PutMetricAlarm` and specify a `MetricName`, you must specify
    #   either `Statistic` or `ExtendedStatistic,` but not both.
    #
    # @option params [String] :extended_statistic
    #   The percentile statistic for the metric specified in `MetricName`.
    #   Specify a value between p0.0 and p100. When you call `PutMetricAlarm`
    #   and specify a `MetricName`, you must specify either `Statistic` or
    #   `ExtendedStatistic,` but not both.
    #
    # @option params [Array<Types::Dimension>] :dimensions
    #   The dimensions for the metric specified in `MetricName`.
    #
    # @option params [Integer] :period
    #   The length, in seconds, used each time the metric specified in
    #   `MetricName` is evaluated. Valid values are 10, 30, and any multiple
    #   of 60.
    #
    #   `Period` is required for alarms based on static thresholds. If you are
    #   creating an alarm based on a metric math expression, you specify the
    #   period for each metric within the objects in the `Metrics` array.
    #
    #   Be sure to specify 10 or 30 only for metrics that are stored by a
    #   `PutMetricData` call with a `StorageResolution` of 1. If you specify a
    #   period of 10 or 30 for a metric that does not have sub-minute
    #   resolution, the alarm still attempts to gather data at the period rate
    #   that you specify. In this case, it does not receive data for the
    #   attempts that do not correspond to a one-minute data resolution, and
    #   the alarm might often lapse into INSUFFICENT\_DATA status. Specifying
    #   10 or 30 also sets this alarm as a high-resolution alarm, which has a
    #   higher charge than other alarms. For more information about pricing,
    #   see [Amazon CloudWatch Pricing][1].
    #
    #   An alarm's total current evaluation period can be no longer than one
    #   day, so `Period` multiplied by `EvaluationPeriods` cannot be more than
    #   86,400 seconds.
    #
    #
    #
    #   [1]: https://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [String] :unit
    #   The unit of measure for the statistic. For example, the units for the
    #   Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
    #   number of bytes that an instance receives on all network interfaces.
    #   You can also specify a unit when you create a custom metric. Units
    #   help provide conceptual meaning to your data. Metric data points that
    #   specify a unit of measure, such as Percent, are aggregated separately.
    #
    #   If you don't specify `Unit`, CloudWatch retrieves all unit types that
    #   have been published for the metric and attempts to evaluate the alarm.
    #   Usually, metrics are published with only one unit, so the alarm works
    #   as intended.
    #
    #   However, if the metric is published with multiple types of units and
    #   you don't specify a unit, the alarm's behavior is not defined and it
    #   behaves predictably.
    #
    #   We recommend omitting `Unit` so that you don't inadvertently specify
    #   an incorrect unit that is not published for this metric. Doing so
    #   causes the alarm to be stuck in the `INSUFFICIENT DATA` state.
    #
    # @option params [required, Integer] :evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold. If you are setting an alarm that requires that a number of
    #   consecutive data points be breaching to trigger the alarm, this value
    #   specifies that number. If you are setting an "M out of N" alarm,
    #   this value is the N.
    #
    #   An alarm's total current evaluation period can be no longer than one
    #   day, so this number multiplied by `Period` cannot be more than 86,400
    #   seconds.
    #
    # @option params [Integer] :datapoints_to_alarm
    #   The number of data points that must be breaching to trigger the alarm.
    #   This is used only if you are setting an "M out of N" alarm. In that
    #   case, this value is the M. For more information, see [Evaluating an
    #   Alarm][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation
    #
    # @option params [Float] :threshold
    #   The value against which the specified statistic is compared.
    #
    #   This parameter is required for alarms based on static thresholds, but
    #   should not be used for alarms based on anomaly detection models.
    #
    # @option params [required, String] :comparison_operator
    #   The arithmetic operation to use when comparing the specified statistic
    #   and threshold. The specified statistic value is used as the first
    #   operand.
    #
    #   The values `LessThanLowerOrGreaterThanUpperThreshold`,
    #   `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used
    #   only for alarms based on anomaly detection models.
    #
    # @option params [String] :treat_missing_data
    #   Sets how this alarm is to handle missing data points. If
    #   `TreatMissingData` is omitted, the default behavior of `missing` is
    #   used. For more information, see [Configuring How CloudWatch Alarms
    #   Treats Missing Data][1].
    #
    #   Valid Values: `breaching | notBreaching | ignore | missing`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data
    #
    # @option params [String] :evaluate_low_sample_count_percentile
    #   Used only for alarms based on percentiles. If you specify `ignore`,
    #   the alarm state does not change during periods with too few data
    #   points to be statistically significant. If you specify `evaluate` or
    #   omit this parameter, the alarm is always evaluated and possibly
    #   changes state no matter how many data points are available. For more
    #   information, see [Percentile-Based CloudWatch Alarms and Low Data
    #   Samples][1].
    #
    #   Valid Values: `evaluate | ignore`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples
    #
    # @option params [Array<Types::MetricDataQuery>] :metrics
    #   An array of `MetricDataQuery` structures that enable you to create an
    #   alarm based on the result of a metric math expression. For each
    #   `PutMetricAlarm` operation, you must specify either `MetricName` or a
    #   `Metrics` array.
    #
    #   Each item in the `Metrics` array either retrieves a metric or performs
    #   a math expression.
    #
    #   One item in the `Metrics` array is the expression that the alarm
    #   watches. You designate this expression by setting `ReturnValue` to
    #   true for this object in the array. For more information, see
    #   [MetricDataQuery][1].
    #
    #   If you use the `Metrics` parameter, you cannot include the
    #   `MetricName`, `Dimensions`, `Period`, `Namespace`, `Statistic`, or
    #   `ExtendedStatistic` parameters of `PutMetricAlarm` in the same
    #   operation. Instead, you retrieve the metrics you are using in your
    #   math expression as part of the `Metrics` array.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to associate with the alarm. You can
    #   associate as many as 50 tags with an alarm.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    # @option params [String] :threshold_metric_id
    #   If this is an alarm based on an anomaly detection model, make this
    #   value match the ID of the `ANOMALY_DETECTION_BAND` function.
    #
    #   For an example of how to use this parameter, see the **Anomaly
    #   Detection Model Alarm** example on this page.
    #
    #   If your alarm uses this parameter, it cannot have Auto Scaling
    #   actions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metric_alarm({
    #     alarm_name: "AlarmName", # required
    #     alarm_description: "AlarmDescription",
    #     actions_enabled: false,
    #     ok_actions: ["ResourceName"],
    #     alarm_actions: ["ResourceName"],
    #     insufficient_data_actions: ["ResourceName"],
    #     metric_name: "MetricName",
    #     namespace: "Namespace",
    #     statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
    #     extended_statistic: "ExtendedStatistic",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       },
    #     ],
    #     period: 1,
    #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #     evaluation_periods: 1, # required
    #     datapoints_to_alarm: 1,
    #     threshold: 1.0,
    #     comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold, LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, GreaterThanUpperThreshold
    #     treat_missing_data: "TreatMissingData",
    #     evaluate_low_sample_count_percentile: "EvaluateLowSampleCountPercentile",
    #     metrics: [
    #       {
    #         id: "MetricId", # required
    #         metric_stat: {
    #           metric: { # required
    #             namespace: "Namespace",
    #             metric_name: "MetricName",
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               },
    #             ],
    #           },
    #           period: 1, # required
    #           stat: "Stat", # required
    #           unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         },
    #         expression: "MetricExpression",
    #         label: "MetricLabel",
    #         return_data: false,
    #         period: 1,
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     threshold_metric_id: "MetricId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricAlarm AWS API Documentation
    #
    # @overload put_metric_alarm(params = {})
    # @param [Hash] params ({})
    def put_metric_alarm(params = {}, options = {})
      req = build_request(:put_metric_alarm, params)
      req.send_request(options)
    end

    # Publishes metric data points to Amazon CloudWatch. CloudWatch
    # associates the data points with the specified metric. If the specified
    # metric does not exist, CloudWatch creates the metric. When CloudWatch
    # creates a metric, it can take up to fifteen minutes for the metric to
    # appear in calls to [ListMetrics][1].
    #
    # You can publish either individual data points in the `Value` field, or
    # arrays of values and the number of times each value occurred during
    # the period by using the `Values` and `Counts` fields in the
    # `MetricDatum` structure. Using the `Values` and `Counts` method
    # enables you to publish up to 150 values per metric with one
    # `PutMetricData` request, and supports retrieving percentile statistics
    # on this data.
    #
    # Each `PutMetricData` request is limited to 40 KB in size for HTTP POST
    # requests. You can send a payload compressed by gzip. Each request is
    # also limited to no more than 20 different metrics.
    #
    # Although the `Value` parameter accepts numbers of type `Double`,
    # CloudWatch rejects values that are either too small or too large.
    # Values must be in the range of -2^360 to 2^360. In addition, special
    # values (for example, NaN, +Infinity, -Infinity) are not supported.
    #
    # You can use up to 10 dimensions per metric to further clarify what
    # data the metric collects. Each dimension consists of a Name and Value
    # pair. For more information about specifying dimensions, see
    # [Publishing Metrics][2] in the *Amazon CloudWatch User Guide*.
    #
    # Data points with time stamps from 24 hours ago or longer can take at
    # least 48 hours to become available for [GetMetricData][3] or
    # [GetMetricStatistics][4] from the time they are submitted. Data points
    # with time stamps between 3 and 24 hours ago can take as much as 2
    # hours to become available for for [GetMetricData][3] or
    # [GetMetricStatistics][4].
    #
    # CloudWatch needs raw data points to calculate percentile statistics.
    # If you publish data using a statistic set instead, you can only
    # retrieve percentile statistics for this data if one of the following
    # conditions is true:
    #
    # * The `SampleCount` value of the statistic set is 1 and `Min`, `Max`,
    #   and `Sum` are all equal.
    #
    # * The `Min` and `Max` are equal, and `Sum` is equal to `Min`
    #   multiplied by `SampleCount`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html
    # [4]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html
    #
    # @option params [required, String] :namespace
    #   The namespace for the metric data.
    #
    #   To avoid conflicts with AWS service namespaces, you should not specify
    #   a namespace that begins with `AWS/`
    #
    # @option params [required, Array<Types::MetricDatum>] :metric_data
    #   The data for the metric. The array can include no more than 20 metrics
    #   per call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metric_data({
    #     namespace: "Namespace", # required
    #     metric_data: [ # required
    #       {
    #         metric_name: "MetricName", # required
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #         timestamp: Time.now,
    #         value: 1.0,
    #         statistic_values: {
    #           sample_count: 1.0, # required
    #           sum: 1.0, # required
    #           minimum: 1.0, # required
    #           maximum: 1.0, # required
    #         },
    #         values: [1.0],
    #         counts: [1.0],
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         storage_resolution: 1,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricData AWS API Documentation
    #
    # @overload put_metric_data(params = {})
    # @param [Hash] params ({})
    def put_metric_data(params = {}, options = {})
      req = build_request(:put_metric_data, params)
      req.send_request(options)
    end

    # Temporarily sets the state of an alarm for testing purposes. When the
    # updated state differs from the previous value, the action configured
    # for the appropriate state is invoked. For example, if your alarm is
    # configured to send an Amazon SNS message when an alarm is triggered,
    # temporarily changing the alarm state to `ALARM` sends an SNS message.
    #
    # Metric alarms returns to their actual state quickly, often within
    # seconds. Because the metric alarm state change happens quickly, it is
    # typically only visible in the alarm's **History** tab in the Amazon
    # CloudWatch console or through [DescribeAlarmHistory][1].
    #
    # If you use `SetAlarmState` on a composite alarm, the composite alarm
    # is not guaranteed to return to its actual state. It returns to its
    # actual state only once any of its children alarms change state. It is
    # also reevaluated if you update its configuration.
    #
    # If an alarm triggers EC2 Auto Scaling policies or application Auto
    # Scaling policies, you must include information in the
    # `StateReasonData` parameter to enable the policy to take the correct
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html
    #
    # @option params [required, String] :alarm_name
    #   The name of the alarm.
    #
    # @option params [required, String] :state_value
    #   The value of the state.
    #
    # @option params [required, String] :state_reason
    #   The reason that this alarm is set to this specific state, in text
    #   format.
    #
    # @option params [String] :state_reason_data
    #   The reason that this alarm is set to this specific state, in JSON
    #   format.
    #
    #   For SNS or EC2 alarm actions, this is just informational. But for EC2
    #   Auto Scaling or application Auto Scaling alarm actions, the Auto
    #   Scaling policy uses the information in this field to take the correct
    #   action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_alarm_state({
    #     alarm_name: "AlarmName", # required
    #     state_value: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
    #     state_reason: "StateReason", # required
    #     state_reason_data: "StateReasonData",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/SetAlarmState AWS API Documentation
    #
    # @overload set_alarm_state(params = {})
    # @param [Hash] params ({})
    def set_alarm_state(params = {}, options = {})
      req = build_request(:set_alarm_state, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified CloudWatch
    # resource. Currently, the only CloudWatch resources that can be tagged
    # are alarms and Contributor Insights rules.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to AWS and are interpreted
    # strictly as strings of characters.
    #
    # You can use the `TagResource` action with an alarm that already has
    # tags. If you specify a new tag key for the alarm, this tag is appended
    # to the list of tags associated with the alarm. If you specify a tag
    # key that is already associated with the alarm, the new tag value that
    # you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a CloudWatch resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch resource that you're adding tags to.
    #
    #   The ARN format of an alarm is
    #   `arn:aws:cloudwatch:Region:account-id:alarm:alarm-name `
    #
    #   The ARN format of a Contributor Insights rule is
    #   `arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined by
    #   Amazon CloudWatch][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of key-value pairs to associate with the alarm.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch resource that you're removing tags from.
    #
    #   The ARN format of an alarm is
    #   `arn:aws:cloudwatch:Region:account-id:alarm:alarm-name `
    #
    #   The ARN format of a Contributor Insights rule is
    #   `arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined by
    #   Amazon CloudWatch][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-cloudwatch'
      context[:gem_version] = '1.45.0'
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
    # | waiter_name            | params                   | :delay   | :max_attempts |
    # | ---------------------- | ------------------------ | -------- | ------------- |
    # | alarm_exists           | {Client#describe_alarms} | 5        | 40            |
    # | composite_alarm_exists | {Client#describe_alarms} | 5        | 40            |
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
        alarm_exists: Waiters::AlarmExists,
        composite_alarm_exists: Waiters::CompositeAlarmExists
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
