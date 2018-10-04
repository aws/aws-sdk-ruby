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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatch)

module Aws::CloudWatch
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Deletes the specified alarms. In the event of an error, no alarms are
    # deleted.
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

    # Deletes all dashboards that you specify. You may specify up to 100
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

    # Retrieves the history for the specified alarm. You can filter the
    # results by date range or item type. If an alarm name is not specified,
    # the histories for all alarms are returned.
    #
    # CloudWatch retains the history of an alarm even if you delete the
    # alarm.
    #
    # @option params [String] :alarm_name
    #   The name of the alarm.
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
    # @return [Types::DescribeAlarmHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlarmHistoryOutput#alarm_history_items #alarm_history_items} => Array&lt;Types::AlarmHistoryItem&gt;
    #   * {Types::DescribeAlarmHistoryOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarm_history({
    #     alarm_name: "AlarmName",
    #     history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     max_records: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.alarm_history_items #=> Array
    #   resp.alarm_history_items[0].alarm_name #=> String
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

    # Retrieves the specified alarms. If no alarms are specified, all alarms
    # are returned. Alarms can be retrieved by using only a prefix for the
    # alarm name, the alarm state, or a prefix for any action.
    #
    # @option params [Array<String>] :alarm_names
    #   The names of the alarms.
    #
    # @option params [String] :alarm_name_prefix
    #   The alarm name prefix. If this parameter is specified, you cannot
    #   specify `AlarmNames`.
    #
    # @option params [String] :state_value
    #   The state value to be used in matching alarms.
    #
    # @option params [String] :action_prefix
    #   The action name prefix.
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
    #   * {Types::DescribeAlarmsOutput#metric_alarms #metric_alarms} => Array&lt;Types::MetricAlarm&gt;
    #   * {Types::DescribeAlarmsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarms({
    #     alarm_names: ["AlarmName"],
    #     alarm_name_prefix: "AlarmNamePrefix",
    #     state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
    #     action_prefix: "ActionPrefix",
    #     max_records: 1,
    #     next_token: "NextToken",
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
    #   resp.metric_alarms[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.metric_alarms[0].treat_missing_data #=> String
    #   resp.metric_alarms[0].evaluate_low_sample_count_percentile #=> String
    #   resp.next_token #=> String
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
    #   resp.metric_alarms[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.metric_alarms[0].treat_missing_data #=> String
    #   resp.metric_alarms[0].evaluate_low_sample_count_percentile #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsForMetric AWS API Documentation
    #
    # @overload describe_alarms_for_metric(params = {})
    # @param [Hash] params ({})
    def describe_alarms_for_metric(params = {}, options = {})
      req = build_request(:describe_alarms_for_metric, params)
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

    # You can use the `GetMetricData` API to retrieve as many as 100
    # different metrics in a single request, with a total of as many as
    # 100,800 datapoints. You can also optionally perform math expressions
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
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax
    # [2]: https://aws.amazon.com/cloudwatch/pricing/
    #
    # @option params [required, Array<Types::MetricDataQuery>] :metric_data_queries
    #   The metric queries to be returned. A single `GetMetricData` call can
    #   include as many as 100 `MetricDataQuery` structures. Each of these
    #   structures can specify either a metric to retrieve, or a math
    #   expression to perform on retrieved data.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The time stamp indicating the earliest data to be returned.
    #
    #   For better performance, specify `StartTime` and `EndTime` values that
    #   align with the value of the metric's `Period` and sync up with the
    #   beginning and end of an hour. For example, if the `Period` of a metric
    #   is 5 minutes, specifying 12:05 or 12:30 as `StartTime` can get a
    #   faster response from CloudWatch then setting 12:07 or 12:29 as the
    #   `StartTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The time stamp indicating the latest data to be returned.
    #
    #   For better performance, specify `StartTime` and `EndTime` values that
    #   align with the value of the metric's `Period` and sync up with the
    #   beginning and end of an hour. For example, if the `Period` of a metric
    #   is 5 minutes, specifying 12:05 or 12:30 as `EndTime` can get a faster
    #   response from CloudWatch then setting 12:07 or 12:29 as the `EndTime`.
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
    # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations
    #   [2]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The time stamp that determines the first data point to return. Start
    #   times are evaluated relative to the time that CloudWatch receives the
    #   request.
    #
    #   The value specified is inclusive; results include data points with the
    #   specified time stamp. The time stamp must be in ISO 8601 UTC format
    #   (for example, 2016-10-03T23:00:00Z).
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
    #   the specified time stamp. The time stamp must be in ISO 8601 UTC
    #   format (for example, 2016-10-10T23:00:00Z).
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
    #   The unit for a given metric. Metrics may be reported in multiple
    #   units. Not supplying a unit results in all units being returned. If
    #   you specify only a unit that the metric does not report, the results
    #   of the call are null.
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
    #   CloudWatch-Metric-Widget-Structure.
    #
    #   If any metric on the graph could not load all the requested data
    #   points, an orange triangle with an exclamation point appears next to
    #   the graph legend.
    #
    # @option params [String] :output_format
    #   The format of the resulting image. Only PNG images are supported.
    #
    #   The default is `png`. If you specify `png`, the API returns an HTTP
    #   response with the content-type set to `text/xml`. The image data is in
    #   a `MetricWidgetImage` field. For example:
    #
    #   ` <GetMetricWidgetImageResponse
    #   xmlns="http://monitoring.amazonaws.com/doc/2010-08-01/">`
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
    # GetMetricData or GetMetricStatistics to obtain statistical data.
    #
    # Up to 500 results are returned for any one call. To retrieve
    # additional results, use the returned token with subsequent calls.
    #
    # After you create a metric, allow up to fifteen minutes before the
    # metric appears. Statistics about the metric, however, are available
    # sooner using GetMetricData or GetMetricStatistics.
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
    # @return [Types::ListMetricsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMetricsOutput#metrics #metrics} => Array&lt;Types::Metric&gt;
    #   * {Types::ListMetricsOutput#next_token #next_token} => String
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

    # Creates a dashboard if it does not already exist, or updates an
    # existing dashboard. If you update a dashboard, the entire contents are
    # replaced with what you specify here.
    #
    # There is no limit to the number of dashboards in your account. All
    # dashboards in your account are global, not region-specific.
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
    #   For more information about the syntax, see
    #   CloudWatch-Dashboard-Body-Structure.
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

    # Creates or updates an alarm and associates it with the specified
    # metric. Optionally, this operation can associate one or more Amazon
    # SNS resources with the alarm.
    #
    # When this operation creates an alarm, the alarm state is immediately
    # set to `INSUFFICIENT_DATA`. The alarm is evaluated and its state is
    # set appropriately. Any actions associated with the state are then
    # executed.
    #
    # When you update an existing alarm, its state is left unchanged, but
    # the update completely overwrites the previous configuration of the
    # alarm.
    #
    # If you are an IAM user, you must have Amazon EC2 permissions for some
    # operations:
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
    # * `ec2:DescribeInstanceRecoveryAttribute` and `ec2:RecoverInstances`
    #   for alarms with recover actions
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
    # called `AWSServiceRoleForCloudWatchEvents`. For more information about
    # service-linked roles, see [AWS service-linked role][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role
    #
    # @option params [required, String] :alarm_name
    #   The name for the alarm. This name must be unique within the AWS
    #   account.
    #
    # @option params [String] :alarm_description
    #   The description for the alarm.
    #
    # @option params [Boolean] :actions_enabled
    #   Indicates whether actions should be executed during any changes to the
    #   alarm state.
    #
    # @option params [Array<String>] :ok_actions
    #   The actions to execute when this alarm transitions to an `OK` state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #
    #   Valid Values: `arn:aws:automate:region:ec2:stop` \|
    #   `arn:aws:automate:region:ec2:terminate` \|
    #   `arn:aws:automate:region:ec2:recover` \|
    #   `arn:aws:sns:region:account-id:sns-topic-name ` \|
    #   `arn:aws:autoscaling:region:account-id:scalingPolicy:policy-idautoScalingGroupName/group-friendly-name:policyName/policy-friendly-name
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
    #   `arn:aws:sns:region:account-id:sns-topic-name ` \|
    #   `arn:aws:autoscaling:region:account-id:scalingPolicy:policy-idautoScalingGroupName/group-friendly-name:policyName/policy-friendly-name
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
    #   `arn:aws:sns:region:account-id:sns-topic-name ` \|
    #   `arn:aws:autoscaling:region:account-id:scalingPolicy:policy-idautoScalingGroupName/group-friendly-name:policyName/policy-friendly-name
    #   `
    #
    #   Valid Values (for use with IAM roles):
    #   `>arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0`
    #   \|
    #   `arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0`
    #
    # @option params [required, String] :metric_name
    #   The name for the metric associated with the alarm.
    #
    # @option params [required, String] :namespace
    #   The namespace for the metric associated with the alarm.
    #
    # @option params [String] :statistic
    #   The statistic for the metric associated with the alarm, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`. When
    #   you call `PutMetricAlarm`, you must specify either `Statistic` or
    #   `ExtendedStatistic,` but not both.
    #
    # @option params [String] :extended_statistic
    #   The percentile statistic for the metric associated with the alarm.
    #   Specify a value between p0.0 and p100. When you call `PutMetricAlarm`,
    #   you must specify either `Statistic` or `ExtendedStatistic,` but not
    #   both.
    #
    # @option params [Array<Types::Dimension>] :dimensions
    #   The dimensions for the metric associated with the alarm.
    #
    # @option params [required, Integer] :period
    #   The period, in seconds, over which the specified statistic is applied.
    #   Valid values are 10, 30, and any multiple of 60.
    #
    #   Be sure to specify 10 or 30 only for metrics that are stored by a
    #   `PutMetricData` call with a `StorageResolution` of 1. If you specify a
    #   period of 10 or 30 for a metric that does not have sub-minute
    #   resolution, the alarm still attempts to gather data at the period rate
    #   that you specify. In this case, it does not receive data for the
    #   attempts that do not correspond to a one-minute data resolution, and
    #   the alarm may often lapse into INSUFFICENT\_DATA status. Specifying 10
    #   or 30 also sets this alarm as a high-resolution alarm, which has a
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
    #   If you specify a unit, you must use a unit that is appropriate for the
    #   metric. Otherwise, the CloudWatch alarm can get stuck in the
    #   `INSUFFICIENT DATA` state.
    #
    # @option params [required, Integer] :evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold. If you are setting an alarm which requires that a number of
    #   consecutive data points be breaching to trigger the alarm, this value
    #   specifies that number. If you are setting an "M out of N" alarm,
    #   this value is the N.
    #
    #   An alarm's total current evaluation period can be no longer than one
    #   day, so this number multiplied by `Period` cannot be more than 86,400
    #   seconds.
    #
    # @option params [Integer] :datapoints_to_alarm
    #   The number of datapoints that must be breaching to trigger the alarm.
    #   This is used only if you are setting an "M out of N" alarm. In that
    #   case, this value is the M. For more information, see [Evaluating an
    #   Alarm][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation
    #
    # @option params [required, Float] :threshold
    #   The value against which the specified statistic is compared.
    #
    # @option params [required, String] :comparison_operator
    #   The arithmetic operation to use when comparing the specified statistic
    #   and threshold. The specified statistic value is used as the first
    #   operand.
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples
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
    #     period: 1, # required
    #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #     evaluation_periods: 1, # required
    #     datapoints_to_alarm: 1,
    #     threshold: 1.0, # required
    #     comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #     treat_missing_data: "TreatMissingData",
    #     evaluate_low_sample_count_percentile: "EvaluateLowSampleCountPercentile",
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

    # Publishes metric data to Amazon CloudWatch. CloudWatch associates the
    # data with the specified metric. If the specified metric does not
    # exist, CloudWatch creates the metric. When CloudWatch creates a
    # metric, it can take up to fifteen minutes for the metric to appear in
    # calls to ListMetrics.
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
    # Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base
    # 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for
    # example, NaN, +Infinity, -Infinity) are not supported.
    #
    # You can use up to 10 dimensions per metric to further clarify what
    # data the metric collects. For more information about specifying
    # dimensions, see [Publishing Metrics][1] in the *Amazon CloudWatch User
    # Guide*.
    #
    # Data points with time stamps from 24 hours ago or longer can take at
    # least 48 hours to become available for GetMetricData or
    # GetMetricStatistics from the time they are submitted.
    #
    # CloudWatch needs raw data points to calculate percentile statistics.
    # These raw data points could be published individually or as part of
    # `Values` and `Counts` arrays. If you publish data using statistic sets
    # in the `StatisticValues` field instead, you can only retrieve
    # percentile statistics for this data if one of the following conditions
    # is true:
    #
    # * The `SampleCount` value of the statistic set is 1 and `Min`, `Max`,
    #   and `Sum` are all equal.
    #
    # * The `Min` and `Max` are equal, and `Sum` is equal to `Min`
    #   multiplied by `SampleCount`.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    #
    # @option params [required, String] :namespace
    #   The namespace for the metric data.
    #
    #   You cannot specify a namespace that begins with "AWS/". Namespaces
    #   that begin with "AWS/" are reserved for use by Amazon Web Services
    #   products.
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
    # The alarm returns to its actual state (often within seconds). Because
    # the alarm state change happens quickly, it is typically only visible
    # in the alarm's **History** tab in the Amazon CloudWatch console or
    # through DescribeAlarmHistory.
    #
    # @option params [required, String] :alarm_name
    #   The name for the alarm. This name must be unique within the AWS
    #   account. The maximum length is 255 characters.
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
      context[:gem_version] = '1.10.0'
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
    #     client.waiter_until(waiter_name, params)
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
    # | waiter_name  | params             | :delay   | :max_attempts |
    # | ------------ | ------------------ | -------- | ------------- |
    # | alarm_exists | {#describe_alarms} | 5        | 40            |
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
        alarm_exists: Waiters::AlarmExists
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
