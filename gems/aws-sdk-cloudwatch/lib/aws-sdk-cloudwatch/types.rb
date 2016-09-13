# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudWatch
    module Types

      # The `AlarmHistoryItem` data type contains descriptive information
      # about the history of a specific alarm. If you call
      # DescribeAlarmHistory, Amazon CloudWatch returns this data type as part
      # of the DescribeAlarmHistoryResult data type.
      class AlarmHistoryItem < Aws::Structure.new(
        :alarm_name,
        :timestamp,
        :history_item_type,
        :history_summary,
        :history_data)

        # @!attribute [rw] alarm_name
        #   The descriptive name for the alarm.
        #   @return [String]

        # @!attribute [rw] timestamp
        #   The time stamp for the alarm history item.
        #   @return [Time]

        # @!attribute [rw] history_item_type
        #   The type of alarm history item.
        #   @return [String]

        # @!attribute [rw] history_summary
        #   A human-readable summary of the alarm history.
        #   @return [String]

        # @!attribute [rw] history_data
        #   Machine-readable data about the alarm in JSON format.
        #   @return [String]

      end

      # The `Datapoint` data type encapsulates the statistical data that
      # Amazon CloudWatch computes from metric data.
      class Datapoint < Aws::Structure.new(
        :timestamp,
        :sample_count,
        :average,
        :sum,
        :minimum,
        :maximum,
        :unit)

        # @!attribute [rw] timestamp
        #   The time stamp used for the datapoint.
        #   @return [Time]

        # @!attribute [rw] sample_count
        #   The number of metric values that contributed to the aggregate value
        #   of this datapoint.
        #   @return [Float]

        # @!attribute [rw] average
        #   The average of metric values that correspond to the datapoint.
        #   @return [Float]

        # @!attribute [rw] sum
        #   The sum of metric values used for the datapoint.
        #   @return [Float]

        # @!attribute [rw] minimum
        #   The minimum metric value used for the datapoint.
        #   @return [Float]

        # @!attribute [rw] maximum
        #   The maximum of the metric value used for the datapoint.
        #   @return [Float]

        # @!attribute [rw] unit
        #   The standard unit used for the datapoint.
        #   @return [String]

      end

      # Describes the inputs for DeleteAlarms.
      # @note When making an API call, pass DeleteAlarmsInput
      #   data as a hash:
      #
      #       {
      #         alarm_names: ["AlarmName"], # required
      #       }
      class DeleteAlarmsInput < Aws::Structure.new(
        :alarm_names)

        # @!attribute [rw] alarm_names
        #   A list of alarms to be deleted.
        #   @return [Array<String>]

      end

      # Describes the inputs for DescribeAlarmHistory.
      # @note When making an API call, pass DescribeAlarmHistoryInput
      #   data as a hash:
      #
      #       {
      #         alarm_name: "AlarmName",
      #         history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
      #         start_date: Time.now,
      #         end_date: Time.now,
      #         max_records: 1,
      #         next_token: "NextToken",
      #       }
      class DescribeAlarmHistoryInput < Aws::Structure.new(
        :alarm_name,
        :history_item_type,
        :start_date,
        :end_date,
        :max_records,
        :next_token)

        # @!attribute [rw] alarm_name
        #   The name of the alarm.
        #   @return [String]

        # @!attribute [rw] history_item_type
        #   The type of alarm histories to retrieve.
        #   @return [String]

        # @!attribute [rw] start_date
        #   The starting date to retrieve alarm history.
        #   @return [Time]

        # @!attribute [rw] end_date
        #   The ending date to retrieve alarm history.
        #   @return [Time]

        # @!attribute [rw] max_records
        #   The maximum number of alarm history records to retrieve.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The token returned by a previous call to indicate that there is more
        #   data available.
        #   @return [String]

      end

      # The output for DescribeAlarmHistory.
      class DescribeAlarmHistoryOutput < Aws::Structure.new(
        :alarm_history_items,
        :next_token)

        # @!attribute [rw] alarm_history_items
        #   A list of alarm histories in JSON format.
        #   @return [Array<Types::AlarmHistoryItem>]

        # @!attribute [rw] next_token
        #   A string that marks the start of the next batch of returned results.
        #   @return [String]

      end

      # Describes the inputs for DescribeAlarmsForMetric.
      # @note When making an API call, pass DescribeAlarmsForMetricInput
      #   data as a hash:
      #
      #       {
      #         metric_name: "MetricName", # required
      #         namespace: "Namespace", # required
      #         statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
      #         dimensions: [
      #           {
      #             name: "DimensionName", # required
      #             value: "DimensionValue", # required
      #           },
      #         ],
      #         period: 1,
      #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #       }
      class DescribeAlarmsForMetricInput < Aws::Structure.new(
        :metric_name,
        :namespace,
        :statistic,
        :dimensions,
        :period,
        :unit)

        # @!attribute [rw] metric_name
        #   The name of the metric.
        #   @return [String]

        # @!attribute [rw] namespace
        #   The namespace of the metric.
        #   @return [String]

        # @!attribute [rw] statistic
        #   The statistic for the metric.
        #   @return [String]

        # @!attribute [rw] dimensions
        #   The list of dimensions associated with the metric. If the metric has
        #   any associated dimensions, you must specify them in order for the
        #   DescribeAlarmsForMetric to succeed.
        #   @return [Array<Types::Dimension>]

        # @!attribute [rw] period
        #   The period in seconds over which the statistic is applied.
        #   @return [Integer]

        # @!attribute [rw] unit
        #   The unit for the metric.
        #   @return [String]

      end

      # The output for DescribeAlarmsForMetric.
      class DescribeAlarmsForMetricOutput < Aws::Structure.new(
        :metric_alarms)

        # @!attribute [rw] metric_alarms
        #   A list of information for each alarm with the specified metric.
        #   @return [Array<Types::MetricAlarm>]

      end

      # Describes the inputs for DescribeAlarms.
      # @note When making an API call, pass DescribeAlarmsInput
      #   data as a hash:
      #
      #       {
      #         alarm_names: ["AlarmName"],
      #         alarm_name_prefix: "AlarmNamePrefix",
      #         state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
      #         action_prefix: "ActionPrefix",
      #         max_records: 1,
      #         next_token: "NextToken",
      #       }
      class DescribeAlarmsInput < Aws::Structure.new(
        :alarm_names,
        :alarm_name_prefix,
        :state_value,
        :action_prefix,
        :max_records,
        :next_token)

        # @!attribute [rw] alarm_names
        #   A list of alarm names to retrieve information for.
        #   @return [Array<String>]

        # @!attribute [rw] alarm_name_prefix
        #   The alarm name prefix. `AlarmNames` cannot be specified if this
        #   parameter is specified.
        #   @return [String]

        # @!attribute [rw] state_value
        #   The state value to be used in matching alarms.
        #   @return [String]

        # @!attribute [rw] action_prefix
        #   The action name prefix.
        #   @return [String]

        # @!attribute [rw] max_records
        #   The maximum number of alarm descriptions to retrieve.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The token returned by a previous call to indicate that there is more
        #   data available.
        #   @return [String]

      end

      # The output for DescribeAlarms.
      class DescribeAlarmsOutput < Aws::Structure.new(
        :metric_alarms,
        :next_token)

        # @!attribute [rw] metric_alarms
        #   A list of information for the specified alarms.
        #   @return [Array<Types::MetricAlarm>]

        # @!attribute [rw] next_token
        #   A string that marks the start of the next batch of returned results.
        #   @return [String]

      end

      # The `Dimension` data type further expands on the identity of a metric
      # using a Name, Value pair.
      #
      # For examples that use one or more dimensions, see PutMetricData.
      # @note When making an API call, pass Dimension
      #   data as a hash:
      #
      #       {
      #         name: "DimensionName", # required
      #         value: "DimensionValue", # required
      #       }
      class Dimension < Aws::Structure.new(
        :name,
        :value)

        # @!attribute [rw] name
        #   The name of the dimension.
        #   @return [String]

        # @!attribute [rw] value
        #   The value representing the dimension measurement
        #   @return [String]

      end

      # The `DimensionFilter` data type is used to filter ListMetrics results.
      # @note When making an API call, pass DimensionFilter
      #   data as a hash:
      #
      #       {
      #         name: "DimensionName", # required
      #         value: "DimensionValue",
      #       }
      class DimensionFilter < Aws::Structure.new(
        :name,
        :value)

        # @!attribute [rw] name
        #   The dimension name to be matched.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the dimension to be matched.
        #
        #   <note markdown="1"> Specifying a `Name` without specifying a `Value` returns all values
        #   associated with that `Name`.
        #
        #    </note>
        #   @return [String]

      end

      # @note When making an API call, pass DisableAlarmActionsInput
      #   data as a hash:
      #
      #       {
      #         alarm_names: ["AlarmName"], # required
      #       }
      class DisableAlarmActionsInput < Aws::Structure.new(
        :alarm_names)

        # @!attribute [rw] alarm_names
        #   The names of the alarms to disable actions for.
        #   @return [Array<String>]

      end

      # Describes the inputs for EnableAlarmActions.
      # @note When making an API call, pass EnableAlarmActionsInput
      #   data as a hash:
      #
      #       {
      #         alarm_names: ["AlarmName"], # required
      #       }
      class EnableAlarmActionsInput < Aws::Structure.new(
        :alarm_names)

        # @!attribute [rw] alarm_names
        #   The names of the alarms to enable actions for.
        #   @return [Array<String>]

      end

      # Describes the inputs for GetMetricStatistics.
      # @note When making an API call, pass GetMetricStatisticsInput
      #   data as a hash:
      #
      #       {
      #         namespace: "Namespace", # required
      #         metric_name: "MetricName", # required
      #         dimensions: [
      #           {
      #             name: "DimensionName", # required
      #             value: "DimensionValue", # required
      #           },
      #         ],
      #         start_time: Time.now, # required
      #         end_time: Time.now, # required
      #         period: 1, # required
      #         statistics: ["SampleCount"], # required, accepts SampleCount, Average, Sum, Minimum, Maximum
      #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #       }
      class GetMetricStatisticsInput < Aws::Structure.new(
        :namespace,
        :metric_name,
        :dimensions,
        :start_time,
        :end_time,
        :period,
        :statistics,
        :unit)

        # @!attribute [rw] namespace
        #   The namespace of the metric, with or without spaces.
        #   @return [String]

        # @!attribute [rw] metric_name
        #   The name of the metric, with or without spaces.
        #   @return [String]

        # @!attribute [rw] dimensions
        #   A list of dimensions describing qualities of the metric.
        #   @return [Array<Types::Dimension>]

        # @!attribute [rw] start_time
        #   The time stamp to use for determining the first datapoint to return.
        #   The value specified is inclusive; results include datapoints with
        #   the time stamp specified. The time stamp must be in ISO 8601 UTC
        #   format (e.g., 2014-09-03T23:00:00Z).
        #
        #   <note markdown="1"> The specified start time is rounded down to the nearest value.
        #   Datapoints are returned for start times up to two weeks in the past.
        #   Specified start times that are more than two weeks in the past will
        #   not return datapoints for metrics that are older than two weeks.
        #
        #    Data that is timestamped 24 hours or more in the past may take in
        #   excess of 48 hours to become available from submission time using
        #   `GetMetricStatistics`.
        #
        #    </note>
        #   @return [Time]

        # @!attribute [rw] end_time
        #   The time stamp to use for determining the last datapoint to return.
        #   The value specified is exclusive; results will include datapoints up
        #   to the time stamp specified. The time stamp must be in ISO 8601 UTC
        #   format (e.g., 2014-09-03T23:00:00Z).
        #   @return [Time]

        # @!attribute [rw] period
        #   The granularity, in seconds, of the returned datapoints. A `Period`
        #   can be as short as one minute (60 seconds) or as long as one day
        #   (86,400 seconds), and must be a multiple of 60. The default value is
        #   60.
        #   @return [Integer]

        # @!attribute [rw] statistics
        #   The metric statistics to return. For information about specific
        #   statistics returned by GetMetricStatistics, see [Statistics][1] in
        #   the *Amazon CloudWatch Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Statistic
        #   @return [Array<String>]

        # @!attribute [rw] unit
        #   The specific unit for a given metric. Metrics may be reported in
        #   multiple units. Not supplying a unit results in all units being
        #   returned. If the metric only ever reports one unit, specifying a
        #   unit will have no effect.
        #   @return [String]

      end

      # The output for GetMetricStatistics.
      class GetMetricStatisticsOutput < Aws::Structure.new(
        :label,
        :datapoints)

        # @!attribute [rw] label
        #   A label describing the specified metric.
        #   @return [String]

        # @!attribute [rw] datapoints
        #   The datapoints for the specified metric.
        #   @return [Array<Types::Datapoint>]

      end

      # Describes the inputs for ListMetrics.
      # @note When making an API call, pass ListMetricsInput
      #   data as a hash:
      #
      #       {
      #         namespace: "Namespace",
      #         metric_name: "MetricName",
      #         dimensions: [
      #           {
      #             name: "DimensionName", # required
      #             value: "DimensionValue",
      #           },
      #         ],
      #         next_token: "NextToken",
      #       }
      class ListMetricsInput < Aws::Structure.new(
        :namespace,
        :metric_name,
        :dimensions,
        :next_token)

        # @!attribute [rw] namespace
        #   The namespace to filter against.
        #   @return [String]

        # @!attribute [rw] metric_name
        #   The name of the metric to filter against.
        #   @return [String]

        # @!attribute [rw] dimensions
        #   A list of dimensions to filter against.
        #   @return [Array<Types::DimensionFilter>]

        # @!attribute [rw] next_token
        #   The token returned by a previous call to indicate that there is more
        #   data available.
        #   @return [String]

      end

      # The output for ListMetrics.
      class ListMetricsOutput < Aws::Structure.new(
        :metrics,
        :next_token)

        # @!attribute [rw] metrics
        #   A list of metrics used to generate statistics for an AWS account.
        #   @return [Array<Types::Metric>]

        # @!attribute [rw] next_token
        #   A string that marks the start of the next batch of returned results.
        #   @return [String]

      end

      # The `Metric` data type contains information about a specific metric.
      # If you call ListMetrics, Amazon CloudWatch returns information
      # contained by this data type.
      #
      # The example in the Examples section publishes two metrics named
      # buffers and latency. Both metrics are in the examples namespace. Both
      # metrics have two dimensions, InstanceID and InstanceType.
      class Metric < Aws::Structure.new(
        :namespace,
        :metric_name,
        :dimensions)

        # @!attribute [rw] namespace
        #   The namespace of the metric.
        #   @return [String]

        # @!attribute [rw] metric_name
        #   The name of the metric.
        #   @return [String]

        # @!attribute [rw] dimensions
        #   A list of dimensions associated with the metric.
        #   @return [Array<Types::Dimension>]

      end

      # The MetricAlarm data type represents an alarm. You can use
      # PutMetricAlarm to create or update an alarm.
      class MetricAlarm < Aws::Structure.new(
        :alarm_name,
        :alarm_arn,
        :alarm_description,
        :alarm_configuration_updated_timestamp,
        :actions_enabled,
        :ok_actions,
        :alarm_actions,
        :insufficient_data_actions,
        :state_value,
        :state_reason,
        :state_reason_data,
        :state_updated_timestamp,
        :metric_name,
        :namespace,
        :statistic,
        :dimensions,
        :period,
        :unit,
        :evaluation_periods,
        :threshold,
        :comparison_operator)

        # @!attribute [rw] alarm_name
        #   The name of the alarm.
        #   @return [String]

        # @!attribute [rw] alarm_arn
        #   The Amazon Resource Name (ARN) of the alarm.
        #   @return [String]

        # @!attribute [rw] alarm_description
        #   The description for the alarm.
        #   @return [String]

        # @!attribute [rw] alarm_configuration_updated_timestamp
        #   The time stamp of the last update to the alarm configuration.
        #   @return [Time]

        # @!attribute [rw] actions_enabled
        #   Indicates whether actions should be executed during any changes to
        #   the alarm\'s state.
        #   @return [Boolean]

        # @!attribute [rw] ok_actions
        #   The list of actions to execute when this alarm transitions into an
        #   `OK` state from any other state. Each action is specified as an
        #   Amazon Resource Name (ARN).
        #   @return [Array<String>]

        # @!attribute [rw] alarm_actions
        #   The list of actions to execute when this alarm transitions into an
        #   `ALARM` state from any other state. Each action is specified as an
        #   Amazon Resource Name (ARN).
        #   @return [Array<String>]

        # @!attribute [rw] insufficient_data_actions
        #   The list of actions to execute when this alarm transitions into an
        #   `INSUFFICIENT_DATA` state from any other state. Each action is
        #   specified as an Amazon Resource Name (ARN).
        #
        #   <important markdown="1"> The current WSDL lists this attribute as `UnknownActions`.
        #
        #    </important>
        #   @return [Array<String>]

        # @!attribute [rw] state_value
        #   The state value for the alarm.
        #   @return [String]

        # @!attribute [rw] state_reason
        #   A human-readable explanation for the alarm\'s state.
        #   @return [String]

        # @!attribute [rw] state_reason_data
        #   An explanation for the alarm\'s state in machine-readable JSON
        #   format
        #   @return [String]

        # @!attribute [rw] state_updated_timestamp
        #   The time stamp of the last update to the alarm\'s state.
        #   @return [Time]

        # @!attribute [rw] metric_name
        #   The name of the alarm\'s metric.
        #   @return [String]

        # @!attribute [rw] namespace
        #   The namespace of alarm\'s associated metric.
        #   @return [String]

        # @!attribute [rw] statistic
        #   The statistic to apply to the alarm\'s associated metric.
        #   @return [String]

        # @!attribute [rw] dimensions
        #   The list of dimensions associated with the alarm\'s associated
        #   metric.
        #   @return [Array<Types::Dimension>]

        # @!attribute [rw] period
        #   The period in seconds over which the statistic is applied.
        #   @return [Integer]

        # @!attribute [rw] unit
        #   The unit of the alarm\'s associated metric.
        #   @return [String]

        # @!attribute [rw] evaluation_periods
        #   The number of periods over which data is compared to the specified
        #   threshold.
        #   @return [Integer]

        # @!attribute [rw] threshold
        #   The value against which the specified statistic is compared.
        #   @return [Float]

        # @!attribute [rw] comparison_operator
        #   The arithmetic operation to use when comparing the specified
        #   `Statistic` and `Threshold`. The specified `Statistic` value is used
        #   as the first operand.
        #   @return [String]

      end

      # The `MetricDatum` data type encapsulates the information sent with
      # PutMetricData to either create a new metric or add new values to be
      # aggregated into an existing metric.
      # @note When making an API call, pass MetricDatum
      #   data as a hash:
      #
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
      #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #       }
      class MetricDatum < Aws::Structure.new(
        :metric_name,
        :dimensions,
        :timestamp,
        :value,
        :statistic_values,
        :unit)

        # @!attribute [rw] metric_name
        #   The name of the metric.
        #   @return [String]

        # @!attribute [rw] dimensions
        #   A list of dimensions associated with the metric. Note, when using
        #   the Dimensions value in a query, you need to append .member.N to it
        #   (e.g., Dimensions.member.N).
        #   @return [Array<Types::Dimension>]

        # @!attribute [rw] timestamp
        #   The time stamp used for the metric in ISO 8601 Universal Coordinated
        #   Time (UTC) format. If not specified, the default value is set to the
        #   time the metric data was received.
        #   @return [Time]

        # @!attribute [rw] value
        #   The value for the metric.
        #
        #   <important markdown="1"> Although the `Value` parameter accepts numbers of type `Double`,
        #   Amazon CloudWatch rejects values that are either too small or too
        #   large. Values must be in the range of 8.515920e-109 to 1.174271e+108
        #   (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values
        #   (e.g., NaN, +Infinity, -Infinity) are not supported.
        #
        #    </important>
        #   @return [Float]

        # @!attribute [rw] statistic_values
        #   A set of statistical values describing the metric.
        #   @return [Types::StatisticSet]

        # @!attribute [rw] unit
        #   The unit of the metric.
        #   @return [String]

      end

      # Describes the inputs for PutMetricAlarm.
      # @note When making an API call, pass PutMetricAlarmInput
      #   data as a hash:
      #
      #       {
      #         alarm_name: "AlarmName", # required
      #         alarm_description: "AlarmDescription",
      #         actions_enabled: false,
      #         ok_actions: ["ResourceName"],
      #         alarm_actions: ["ResourceName"],
      #         insufficient_data_actions: ["ResourceName"],
      #         metric_name: "MetricName", # required
      #         namespace: "Namespace", # required
      #         statistic: "SampleCount", # required, accepts SampleCount, Average, Sum, Minimum, Maximum
      #         dimensions: [
      #           {
      #             name: "DimensionName", # required
      #             value: "DimensionValue", # required
      #           },
      #         ],
      #         period: 1, # required
      #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #         evaluation_periods: 1, # required
      #         threshold: 1.0, # required
      #         comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
      #       }
      class PutMetricAlarmInput < Aws::Structure.new(
        :alarm_name,
        :alarm_description,
        :actions_enabled,
        :ok_actions,
        :alarm_actions,
        :insufficient_data_actions,
        :metric_name,
        :namespace,
        :statistic,
        :dimensions,
        :period,
        :unit,
        :evaluation_periods,
        :threshold,
        :comparison_operator)

        # @!attribute [rw] alarm_name
        #   The descriptive name for the alarm. This name must be unique within
        #   the user\'s AWS account
        #   @return [String]

        # @!attribute [rw] alarm_description
        #   The description for the alarm.
        #   @return [String]

        # @!attribute [rw] actions_enabled
        #   Indicates whether or not actions should be executed during any
        #   changes to the alarm\'s state.
        #   @return [Boolean]

        # @!attribute [rw] ok_actions
        #   The list of actions to execute when this alarm transitions into an
        #   `OK` state from any other state. Each action is specified as an
        #   Amazon Resource Name (ARN).
        #
        #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop
        #   \| arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
        #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:recover
        #
        #   Valid Values (for use with IAM roles):
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
        #   \|
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
        #   \|
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
        #
        #   **Note:** You must create at least one stop, terminate, or reboot
        #   alarm using the Amazon EC2 or CloudWatch console to create the
        #   **EC2ActionsAccess** IAM role for the first time. After this IAM
        #   role is created, you can create stop, terminate, or reboot alarms
        #   using the CLI.
        #   @return [Array<String>]

        # @!attribute [rw] alarm_actions
        #   The list of actions to execute when this alarm transitions into an
        #   `ALARM` state from any other state. Each action is specified as an
        #   Amazon Resource Name (ARN).
        #
        #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop
        #   \| arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
        #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:recover
        #
        #   Valid Values (for use with IAM roles):
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
        #   \|
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
        #   \|
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
        #
        #   **Note:** You must create at least one stop, terminate, or reboot
        #   alarm using the Amazon EC2 or CloudWatch console to create the
        #   **EC2ActionsAccess** IAM role for the first time. After this IAM
        #   role is created, you can create stop, terminate, or reboot alarms
        #   using the CLI.
        #   @return [Array<String>]

        # @!attribute [rw] insufficient_data_actions
        #   The list of actions to execute when this alarm transitions into an
        #   `INSUFFICIENT_DATA` state from any other state. Each action is
        #   specified as an Amazon Resource Name (ARN).
        #
        #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop
        #   \| arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
        #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:recover
        #
        #   Valid Values (for use with IAM roles):
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
        #   \|
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
        #   \|
        #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
        #
        #   **Note:** You must create at least one stop, terminate, or reboot
        #   alarm using the Amazon EC2 or CloudWatch console to create the
        #   **EC2ActionsAccess** IAM role for the first time. After this IAM
        #   role is created, you can create stop, terminate, or reboot alarms
        #   using the CLI.
        #   @return [Array<String>]

        # @!attribute [rw] metric_name
        #   The name for the alarm\'s associated metric.
        #   @return [String]

        # @!attribute [rw] namespace
        #   The namespace for the alarm\'s associated metric.
        #   @return [String]

        # @!attribute [rw] statistic
        #   The statistic to apply to the alarm\'s associated metric.
        #   @return [String]

        # @!attribute [rw] dimensions
        #   The dimensions for the alarm\'s associated metric.
        #   @return [Array<Types::Dimension>]

        # @!attribute [rw] period
        #   The period in seconds over which the specified statistic is applied.
        #   @return [Integer]

        # @!attribute [rw] unit
        #   The statistic\'s unit of measure. For example, the units for the
        #   Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
        #   number of bytes that an instance receives on all network interfaces.
        #   You can also specify a unit when you create a custom metric. Units
        #   help provide conceptual meaning to your data. Metric data points
        #   that specify a unit of measure, such as Percent, are aggregated
        #   separately.
        #
        #   **Note:** If you specify a unit, you must use a unit that is
        #   appropriate for the metric. Otherwise, this can cause an Amazon
        #   CloudWatch alarm to get stuck in the INSUFFICIENT DATA state.
        #   @return [String]

        # @!attribute [rw] evaluation_periods
        #   The number of periods over which data is compared to the specified
        #   threshold.
        #   @return [Integer]

        # @!attribute [rw] threshold
        #   The value against which the specified statistic is compared.
        #   @return [Float]

        # @!attribute [rw] comparison_operator
        #   The arithmetic operation to use when comparing the specified
        #   `Statistic` and `Threshold`. The specified `Statistic` value is used
        #   as the first operand.
        #   @return [String]

      end

      # Describes the inputs for PutMetricData.
      # @note When making an API call, pass PutMetricDataInput
      #   data as a hash:
      #
      #       {
      #         namespace: "Namespace", # required
      #         metric_data: [ # required
      #           {
      #             metric_name: "MetricName", # required
      #             dimensions: [
      #               {
      #                 name: "DimensionName", # required
      #                 value: "DimensionValue", # required
      #               },
      #             ],
      #             timestamp: Time.now,
      #             value: 1.0,
      #             statistic_values: {
      #               sample_count: 1.0, # required
      #               sum: 1.0, # required
      #               minimum: 1.0, # required
      #               maximum: 1.0, # required
      #             },
      #             unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #           },
      #         ],
      #       }
      class PutMetricDataInput < Aws::Structure.new(
        :namespace,
        :metric_data)

        # @!attribute [rw] namespace
        #   The namespace for the metric data.
        #
        #   <note markdown="1"> You cannot specify a namespace that begins with \"AWS/\". Namespaces
        #   that begin with \"AWS/\" are reserved for other Amazon Web Services
        #   products that send metrics to Amazon CloudWatch.
        #
        #    </note>
        #   @return [String]

        # @!attribute [rw] metric_data
        #   A list of data describing the metric.
        #   @return [Array<Types::MetricDatum>]

      end

      # Describes the inputs for SetAlarmState.
      # @note When making an API call, pass SetAlarmStateInput
      #   data as a hash:
      #
      #       {
      #         alarm_name: "AlarmName", # required
      #         state_value: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
      #         state_reason: "StateReason", # required
      #         state_reason_data: "StateReasonData",
      #       }
      class SetAlarmStateInput < Aws::Structure.new(
        :alarm_name,
        :state_value,
        :state_reason,
        :state_reason_data)

        # @!attribute [rw] alarm_name
        #   The descriptive name for the alarm. This name must be unique within
        #   the user\'s AWS account. The maximum length is 255 characters.
        #   @return [String]

        # @!attribute [rw] state_value
        #   The value of the state.
        #   @return [String]

        # @!attribute [rw] state_reason
        #   The reason that this alarm is set to this specific state (in
        #   human-readable text format)
        #   @return [String]

        # @!attribute [rw] state_reason_data
        #   The reason that this alarm is set to this specific state (in
        #   machine-readable JSON format)
        #   @return [String]

      end

      # The `StatisticSet` data type describes the `StatisticValues` component
      # of MetricDatum, and represents a set of statistics that describes a
      # specific metric.
      # @note When making an API call, pass StatisticSet
      #   data as a hash:
      #
      #       {
      #         sample_count: 1.0, # required
      #         sum: 1.0, # required
      #         minimum: 1.0, # required
      #         maximum: 1.0, # required
      #       }
      class StatisticSet < Aws::Structure.new(
        :sample_count,
        :sum,
        :minimum,
        :maximum)

        # @!attribute [rw] sample_count
        #   The number of samples used for the statistic set.
        #   @return [Float]

        # @!attribute [rw] sum
        #   The sum of values for the sample set.
        #   @return [Float]

        # @!attribute [rw] minimum
        #   The minimum value of the sample set.
        #   @return [Float]

        # @!attribute [rw] maximum
        #   The maximum value of the sample set.
        #   @return [Float]

      end

    end
  end
end
