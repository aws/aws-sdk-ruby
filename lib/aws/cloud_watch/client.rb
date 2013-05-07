# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class CloudWatch

    # Client class for Cloud Watch
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[
        :describe_alarm_history,
        :describe_alarms,
        :describe_alarms_for_metric,
        :list_metrics,
      ]

      # client methods #

      # @!method delete_alarms(options = {})
      # Calls the DeleteAlarms API operation.
      # @param [Hash] options
      #   * `:alarm_names` - *required* - (Array<String>) A list of alarms to
      #     be deleted.
      # @return [Core::Response]

      # @!method describe_alarm_history(options = {})
      # Calls the DescribeAlarmHistory API operation.
      # @param [Hash] options
      #   * `:alarm_name` - (String) The name of the alarm.
      #   * `:history_item_type` - (String) The type of alarm histories to
      #     retrieve. Valid values include:
      #     * `ConfigurationUpdate`
      #     * `StateUpdate`
      #     * `Action`
      #   * `:start_date` - (String<ISO8601 datetime>) The starting date to
      #     retrieve alarm history.
      #   * `:end_date` - (String<ISO8601 datetime>) The ending date to
      #     retrieve alarm history.
      #   * `:max_records` - (Integer) The maximum number of alarm history
      #     records to retrieve.
      #   * `:next_token` - (String) The token returned by a previous call to
      #     indicate that there is more data available.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:alarm_history_items` - (Array<Hash>)
      #     * `:alarm_name` - (String)
      #     * `:timestamp` - (Time)
      #     * `:history_item_type` - (String)
      #     * `:history_summary` - (String)
      #     * `:history_data` - (String)
      #   * `:next_token` - (String)

      # @!method describe_alarms(options = {})
      # Calls the DescribeAlarms API operation.
      # @param [Hash] options
      #   * `:alarm_names` - (Array<String>) A list of alarm names to retrieve
      #     information for.
      #   * `:alarm_name_prefix` - (String) The alarm name prefix. AlarmNames
      #     cannot be specified if this parameter is specified.
      #   * `:state_value` - (String) The state value to be used in matching
      #     alarms. Valid values include:
      #     * `OK`
      #     * `ALARM`
      #     * `INSUFFICIENT_DATA`
      #   * `:action_prefix` - (String) The action name prefix.
      #   * `:max_records` - (Integer) The maximum number of alarm descriptions
      #     to retrieve.
      #   * `:next_token` - (String) The token returned by a previous call to
      #     indicate that there is more data available.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:metric_alarms` - (Array<Hash>)
      #     * `:alarm_name` - (String)
      #     * `:alarm_arn` - (String)
      #     * `:alarm_description` - (String)
      #     * `:alarm_configuration_updated_timestamp` - (Time)
      #     * `:actions_enabled` - (Boolean)
      #     * `:ok_actions` - (Array<String>)
      #     * `:alarm_actions` - (Array<String>)
      #     * `:insufficient_data_actions` - (Array<String>)
      #     * `:state_value` - (String)
      #     * `:state_reason` - (String)
      #     * `:state_reason_data` - (String)
      #     * `:state_updated_timestamp` - (Time)
      #     * `:metric_name` - (String)
      #     * `:namespace` - (String)
      #     * `:statistic` - (String)
      #     * `:dimensions` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:value` - (String)
      #     * `:period` - (Integer)
      #     * `:unit` - (String)
      #     * `:evaluation_periods` - (Integer)
      #     * `:threshold` - (Numeric)
      #     * `:comparison_operator` - (String)
      #   * `:next_token` - (String)

      # @!method describe_alarms_for_metric(options = {})
      # Calls the DescribeAlarmsForMetric API operation.
      # @param [Hash] options
      #   * `:metric_name` - *required* - (String) The name of the metric.
      #   * `:namespace` - *required* - (String) The namespace of the metric.
      #   * `:statistic` - (String) The statistic for the metric. Valid values
      #     include:
      #     * `SampleCount`
      #     * `Average`
      #     * `Sum`
      #     * `Minimum`
      #     * `Maximum`
      #   * `:dimensions` - (Array<Hash>) The list of dimensions associated
      #     with the metric.
      #     * `:name` - *required* - (String) The name of the dimension.
      #     * `:value` - *required* - (String) The value representing the
      #       dimension measurement
      #   * `:period` - (Integer) The period in seconds over which the
      #     statistic is applied.
      #   * `:unit` - (String) The unit for the metric. Valid values include:
      #     * `Seconds`
      #     * `Microseconds`
      #     * `Milliseconds`
      #     * `Bytes`
      #     * `Kilobytes`
      #     * `Megabytes`
      #     * `Gigabytes`
      #     * `Terabytes`
      #     * `Bits`
      #     * `Kilobits`
      #     * `Megabits`
      #     * `Gigabits`
      #     * `Terabits`
      #     * `Percent`
      #     * `Count`
      #     * `Bytes/Second`
      #     * `Kilobytes/Second`
      #     * `Megabytes/Second`
      #     * `Gigabytes/Second`
      #     * `Terabytes/Second`
      #     * `Bits/Second`
      #     * `Kilobits/Second`
      #     * `Megabits/Second`
      #     * `Gigabits/Second`
      #     * `Terabits/Second`
      #     * `Count/Second`
      #     * `None`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:metric_alarms` - (Array<Hash>)
      #     * `:alarm_name` - (String)
      #     * `:alarm_arn` - (String)
      #     * `:alarm_description` - (String)
      #     * `:alarm_configuration_updated_timestamp` - (Time)
      #     * `:actions_enabled` - (Boolean)
      #     * `:ok_actions` - (Array<String>)
      #     * `:alarm_actions` - (Array<String>)
      #     * `:insufficient_data_actions` - (Array<String>)
      #     * `:state_value` - (String)
      #     * `:state_reason` - (String)
      #     * `:state_reason_data` - (String)
      #     * `:state_updated_timestamp` - (Time)
      #     * `:metric_name` - (String)
      #     * `:namespace` - (String)
      #     * `:statistic` - (String)
      #     * `:dimensions` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:value` - (String)
      #     * `:period` - (Integer)
      #     * `:unit` - (String)
      #     * `:evaluation_periods` - (Integer)
      #     * `:threshold` - (Numeric)
      #     * `:comparison_operator` - (String)

      # @!method disable_alarm_actions(options = {})
      # Calls the DisableAlarmActions API operation.
      # @param [Hash] options
      #   * `:alarm_names` - *required* - (Array<String>) The names of the
      #     alarms to disable actions for.
      # @return [Core::Response]

      # @!method enable_alarm_actions(options = {})
      # Calls the EnableAlarmActions API operation.
      # @param [Hash] options
      #   * `:alarm_names` - *required* - (Array<String>) The names of the
      #     alarms to enable actions for.
      # @return [Core::Response]

      # @!method get_metric_statistics(options = {})
      # Calls the GetMetricStatistics API operation.
      # @param [Hash] options
      #   * `:namespace` - *required* - (String) The namespace of the metric.
      #   * `:metric_name` - *required* - (String) The name of the metric.
      #   * `:dimensions` - (Array<Hash>) A list of dimensions describing
      #     qualities of the metric.
      #     * `:name` - *required* - (String) The name of the dimension.
      #     * `:value` - *required* - (String) The value representing the
      #       dimension measurement
      #   * `:start_time` - *required* - (String<ISO8601 datetime>) The time
      #     stamp to use for determining the first datapoint to return. The
      #     value specified is inclusive; results include datapoints with the
      #     time stamp specified. The specified start time is rounded down to
      #     the nearest value. Datapoints are returned for start times up to
      #     two weeks in the past. Specified start times that are more than two
      #     weeks in the past will not return datapoints for metrics that are
      #     older than two weeks.
      #   * `:end_time` - *required* - (String<ISO8601 datetime>) The time
      #     stamp to use for determining the last datapoint to return. The
      #     value specified is exclusive; results will include datapoints up to
      #     the time stamp specified.
      #   * `:period` - *required* - (Integer) The granularity, in seconds, of
      #     the returned datapoints. Period must be at least 60 seconds and
      #     must be a multiple of 60. The default value is 60.
      #   * `:statistics` - *required* - (Array<String>) The metric statistics
      #     to return.
      #   * `:unit` - (String) The unit for the metric. Valid values include:
      #     * `Seconds`
      #     * `Microseconds`
      #     * `Milliseconds`
      #     * `Bytes`
      #     * `Kilobytes`
      #     * `Megabytes`
      #     * `Gigabytes`
      #     * `Terabytes`
      #     * `Bits`
      #     * `Kilobits`
      #     * `Megabits`
      #     * `Gigabits`
      #     * `Terabits`
      #     * `Percent`
      #     * `Count`
      #     * `Bytes/Second`
      #     * `Kilobytes/Second`
      #     * `Megabytes/Second`
      #     * `Gigabytes/Second`
      #     * `Terabytes/Second`
      #     * `Bits/Second`
      #     * `Kilobits/Second`
      #     * `Megabits/Second`
      #     * `Gigabits/Second`
      #     * `Terabits/Second`
      #     * `Count/Second`
      #     * `None`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:label` - (String)
      #   * `:datapoints` - (Array<Hash>)
      #     * `:timestamp` - (Time)
      #     * `:sample_count` - (Numeric)
      #     * `:average` - (Numeric)
      #     * `:sum` - (Numeric)
      #     * `:minimum` - (Numeric)
      #     * `:maximum` - (Numeric)
      #     * `:unit` - (String)

      # @!method list_metrics(options = {})
      # Calls the ListMetrics API operation.
      # @param [Hash] options
      #   * `:namespace` - (String) The namespace to filter against.
      #   * `:metric_name` - (String) The name of the metric to filter against.
      #   * `:dimensions` - (Array<Hash>) A list of dimensions to filter
      #     against.
      #     * `:name` - *required* - (String) The dimension name to be matched.
      #     * `:value` - (String) The value of the dimension to be matched.
      #       Specifying a Name without specifying a Value returns all values
      #       associated with that Name.
      #   * `:next_token` - (String) The token returned by a previous call to
      #     indicate that there is more data available.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:metrics` - (Array<Hash>)
      #     * `:namespace` - (String)
      #     * `:metric_name` - (String)
      #     * `:dimensions` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:value` - (String)
      #   * `:next_token` - (String)

      # @!method put_metric_alarm(options = {})
      # Calls the PutMetricAlarm API operation.
      # @param [Hash] options
      #   * `:alarm_name` - *required* - (String) The descriptive name for the
      #     alarm. This name must be unique within the user's AWS account
      #   * `:alarm_description` - (String) The description for the alarm.
      #   * `:actions_enabled` - (Boolean) Indicates whether or not actions
      #     should be executed during any changes to the alarm's state.
      #   * `:ok_actions` - (Array<String>) The list of actions to execute when
      #     this alarm transitions into an OK state from any other state. Each
      #     action is specified as an Amazon Resource Number (ARN). Currently
      #     the only action supported is publishing to an Amazon SNS topic or
      #     an Amazon Auto Scaling policy.
      #   * `:alarm_actions` - (Array<String>) The list of actions to execute
      #     when this alarm transitions into an ALARM state from any other
      #     state. Each action is specified as an Amazon Resource Number (ARN).
      #     Currently the only action supported is publishing to an Amazon SNS
      #     topic or an Amazon Auto Scaling policy.
      #   * `:insufficient_data_actions` - (Array<String>) The list of actions
      #     to execute when this alarm transitions into an INSUFFICIENT_DATA
      #     state from any other state. Each action is specified as an Amazon
      #     Resource Number (ARN). Currently the only action supported is
      #     publishing to an Amazon SNS topic or an Amazon Auto Scaling policy.
      #   * `:metric_name` - *required* - (String) The name for the alarm's
      #     associated metric.
      #   * `:namespace` - *required* - (String) The namespace for the alarm's
      #     associated metric.
      #   * `:statistic` - *required* - (String) The statistic to apply to the
      #     alarm's associated metric. Valid values include:
      #     * `SampleCount`
      #     * `Average`
      #     * `Sum`
      #     * `Minimum`
      #     * `Maximum`
      #   * `:dimensions` - (Array<Hash>) The dimensions for the alarm's
      #     associated metric.
      #     * `:name` - *required* - (String) The name of the dimension.
      #     * `:value` - *required* - (String) The value representing the
      #       dimension measurement
      #   * `:period` - *required* - (Integer) The period in seconds over which
      #     the specified statistic is applied.
      #   * `:unit` - (String) The unit for the alarm's associated metric.
      #     Valid values include:
      #     * `Seconds`
      #     * `Microseconds`
      #     * `Milliseconds`
      #     * `Bytes`
      #     * `Kilobytes`
      #     * `Megabytes`
      #     * `Gigabytes`
      #     * `Terabytes`
      #     * `Bits`
      #     * `Kilobits`
      #     * `Megabits`
      #     * `Gigabits`
      #     * `Terabits`
      #     * `Percent`
      #     * `Count`
      #     * `Bytes/Second`
      #     * `Kilobytes/Second`
      #     * `Megabytes/Second`
      #     * `Gigabytes/Second`
      #     * `Terabytes/Second`
      #     * `Bits/Second`
      #     * `Kilobits/Second`
      #     * `Megabits/Second`
      #     * `Gigabits/Second`
      #     * `Terabits/Second`
      #     * `Count/Second`
      #     * `None`
      #   * `:evaluation_periods` - *required* - (Integer) The number of
      #     periods over which data is compared to the specified threshold.
      #   * `:threshold` - *required* - (Float) The value against which the
      #     specified statistic is compared.
      #   * `:comparison_operator` - *required* - (String) The arithmetic
      #     operation to use when comparing the specified Statistic and
      #     Threshold. The specified Statistic value is used as the first
      #     operand. Valid values include:
      #     * `GreaterThanOrEqualToThreshold`
      #     * `GreaterThanThreshold`
      #     * `LessThanThreshold`
      #     * `LessThanOrEqualToThreshold`
      # @return [Core::Response]

      # @!method put_metric_data(options = {})
      # Calls the PutMetricData API operation.
      # @param [Hash] options
      #   * `:namespace` - *required* - (String) The namespace for the metric
      #     data.
      #   * `:metric_data` - *required* - (Array<Hash>) A list of data
      #     describing the metric.
      #     * `:metric_name` - *required* - (String) The name of the metric.
      #     * `:dimensions` - (Array<Hash>) A list of dimensions associated
      #       with the metric.
      #       * `:name` - *required* - (String) The name of the dimension.
      #       * `:value` - *required* - (String) The value representing the
      #         dimension measurement
      #     * `:timestamp` - (String<ISO8601 datetime>) The time stamp used for
      #       the metric. If not specified, the default value is set to the
      #       time the metric data was received.
      #     * `:value` - (Float) The value for the metric. Although the Value
      #       parameter accepts numbers of type Double, Amazon CloudWatch
      #       truncates values with very large exponents. Values with base-10
      #       exponents greater than 126 (1 x 10^126) are truncated. Likewise,
      #       values with base-10 exponents less than -130 (1 x 10^-130) are
      #       also truncated.
      #     * `:statistic_values` - (Hash) A set of statistical values
      #       describing the metric.
      #       * `:sample_count` - *required* - (Float) The number of samples
      #         used for the statistic set.
      #       * `:sum` - *required* - (Float) The sum of values for the sample
      #         set.
      #       * `:minimum` - *required* - (Float) The minimum value of the
      #         sample set.
      #       * `:maximum` - *required* - (Float) The maximum value of the
      #         sample set.
      #     * `:unit` - (String) The unit of the metric. Valid values include:
      #       * `Seconds`
      #       * `Microseconds`
      #       * `Milliseconds`
      #       * `Bytes`
      #       * `Kilobytes`
      #       * `Megabytes`
      #       * `Gigabytes`
      #       * `Terabytes`
      #       * `Bits`
      #       * `Kilobits`
      #       * `Megabits`
      #       * `Gigabits`
      #       * `Terabits`
      #       * `Percent`
      #       * `Count`
      #       * `Bytes/Second`
      #       * `Kilobytes/Second`
      #       * `Megabytes/Second`
      #       * `Gigabytes/Second`
      #       * `Terabytes/Second`
      #       * `Bits/Second`
      #       * `Kilobits/Second`
      #       * `Megabits/Second`
      #       * `Gigabits/Second`
      #       * `Terabits/Second`
      #       * `Count/Second`
      #       * `None`
      # @return [Core::Response]

      # @!method set_alarm_state(options = {})
      # Calls the SetAlarmState API operation.
      # @param [Hash] options
      #   * `:alarm_name` - *required* - (String) The descriptive name for the
      #     alarm. This name must be unique within the user's AWS account. The
      #     maximum length is 255 characters.
      #   * `:state_value` - *required* - (String) The value of the state.
      #     Valid values include:
      #     * `OK`
      #     * `ALARM`
      #     * `INSUFFICIENT_DATA`
      #   * `:state_reason` - *required* - (String) The reason that this alarm
      #     is set to this specific state (in human-readable text format)
      #   * `:state_reason_data` - (String) The reason that this alarm is set
      #     to this specific state (in machine-readable JSON format)
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2010-08-01')

    end
  end
end
