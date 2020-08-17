# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch
  module Types

    # Represents the history of a specific alarm.
    #
    # @!attribute [rw] alarm_name
    #   The descriptive name for the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_type
    #   The type of alarm, either metric alarm or composite alarm.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time stamp for the alarm history item.
    #   @return [Time]
    #
    # @!attribute [rw] history_item_type
    #   The type of alarm history item.
    #   @return [String]
    #
    # @!attribute [rw] history_summary
    #   A summary of the alarm history, in text format.
    #   @return [String]
    #
    # @!attribute [rw] history_data
    #   Data about the alarm, in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/AlarmHistoryItem AWS API Documentation
    #
    class AlarmHistoryItem < Struct.new(
      :alarm_name,
      :alarm_type,
      :timestamp,
      :history_item_type,
      :history_summary,
      :history_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # An anomaly detection model associated with a particular CloudWatch
    # metric and statistic. You can use the model to display a band of
    # expected normal values when the metric is graphed.
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric associated with the anomaly detection
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric associated with the anomaly detection model.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The metric dimensions associated with the anomaly detection model.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] stat
    #   The statistic associated with the anomaly detection model.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration specifies details about how the anomaly detection
    #   model is to be trained, including time ranges to exclude from use
    #   for training the model, and the time zone to use for the metric.
    #   @return [Types::AnomalyDetectorConfiguration]
    #
    # @!attribute [rw] state_value
    #   The current status of the anomaly detector's training. The possible
    #   values are `TRAINED | PENDING_TRAINING | TRAINED_INSUFFICIENT_DATA`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/AnomalyDetector AWS API Documentation
    #
    class AnomalyDetector < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :stat,
      :configuration,
      :state_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration specifies details about how the anomaly detection
    # model is to be trained, including time ranges to exclude from use for
    # training the model and the time zone to use for the metric.
    #
    # @note When making an API call, you may pass AnomalyDetectorConfiguration
    #   data as a hash:
    #
    #       {
    #         excluded_time_ranges: [
    #           {
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           },
    #         ],
    #         metric_timezone: "AnomalyDetectorMetricTimezone",
    #       }
    #
    # @!attribute [rw] excluded_time_ranges
    #   An array of time ranges to exclude from use when the anomaly
    #   detection model is trained. Use this to make sure that events that
    #   could cause unusual values for the metric, such as deployments,
    #   aren't used when CloudWatch creates the model.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] metric_timezone
    #   The time zone to use for the metric. This is useful to enable the
    #   model to automatically account for daylight savings time changes if
    #   the metric is sensitive to such time changes.
    #
    #   To specify a time zone, use the name of the time zone as specified
    #   in the standard tz database. For more information, see [tz
    #   database][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Tz_database
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/AnomalyDetectorConfiguration AWS API Documentation
    #
    class AnomalyDetectorConfiguration < Struct.new(
      :excluded_time_ranges,
      :metric_timezone)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about a composite alarm.
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state.
    #   @return [Boolean]
    #
    # @!attribute [rw] alarm_actions
    #   The actions to execute when this alarm transitions to the ALARM
    #   state from any other state. Each action is specified as an Amazon
    #   Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration_updated_timestamp
    #   The time stamp of the last update to the alarm configuration.
    #   @return [Time]
    #
    # @!attribute [rw] alarm_description
    #   The description of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_rule
    #   The rule that this alarm uses to evaluate its alarm state.
    #   @return [String]
    #
    # @!attribute [rw] insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   INSUFFICIENT\_DATA state from any other state. Each action is
    #   specified as an Amazon Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] ok_actions
    #   The actions to execute when this alarm transitions to the OK state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] state_reason
    #   An explanation for the alarm state, in text format.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_data
    #   An explanation for the alarm state, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] state_updated_timestamp
    #   The time stamp of the last update to the alarm state.
    #   @return [Time]
    #
    # @!attribute [rw] state_value
    #   The state value for the alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/CompositeAlarm AWS API Documentation
    #
    class CompositeAlarm < Struct.new(
      :actions_enabled,
      :alarm_actions,
      :alarm_arn,
      :alarm_configuration_updated_timestamp,
      :alarm_description,
      :alarm_name,
      :alarm_rule,
      :insufficient_data_actions,
      :ok_actions,
      :state_reason,
      :state_reason_data,
      :state_updated_timestamp,
      :state_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # More than one process tried to modify a resource at the same time.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Aws::EmptyStructure; end

    # Represents a specific dashboard.
    #
    # @!attribute [rw] dashboard_name
    #   The name of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The time stamp of when the dashboard was last modified, either by an
    #   API call or through the console. This number is expressed as the
    #   number of milliseconds since Jan 1, 1970 00:00:00 UTC.
    #   @return [Time]
    #
    # @!attribute [rw] size
    #   The size of the dashboard, in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DashboardEntry AWS API Documentation
    #
    class DashboardEntry < Struct.new(
      :dashboard_name,
      :dashboard_arn,
      :last_modified,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Some part of the dashboard data is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] dashboard_validation_messages
    #   @return [Array<Types::DashboardValidationMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DashboardInvalidInputError AWS API Documentation
    #
    class DashboardInvalidInputError < Struct.new(
      :message,
      :dashboard_validation_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified dashboard does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DashboardNotFoundError AWS API Documentation
    #
    class DashboardNotFoundError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error or warning for the operation.
    #
    # @!attribute [rw] data_path
    #   The data path related to the message.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the error or warning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DashboardValidationMessage AWS API Documentation
    #
    class DashboardValidationMessage < Struct.new(
      :data_path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encapsulates the statistical data that CloudWatch computes from metric
    # data.
    #
    # @!attribute [rw] timestamp
    #   The time stamp used for the data point.
    #   @return [Time]
    #
    # @!attribute [rw] sample_count
    #   The number of metric values that contributed to the aggregate value
    #   of this data point.
    #   @return [Float]
    #
    # @!attribute [rw] average
    #   The average of the metric values that correspond to the data point.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of the metric values for the data point.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum metric value for the data point.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum metric value for the data point.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The standard unit for the data point.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistics
    #   The percentile statistic for the data point.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Datapoint AWS API Documentation
    #
    class Datapoint < Struct.new(
      :timestamp,
      :sample_count,
      :average,
      :sum,
      :minimum,
      :maximum,
      :unit,
      :extended_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAlarmsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"], # required
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The alarms to be deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteAlarmsInput AWS API Documentation
    #
    class DeleteAlarmsInput < Struct.new(
      :alarm_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAnomalyDetectorInput
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
    #         stat: "AnomalyDetectorMetricStat", # required
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the anomaly detection model to delete.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric name associated with the anomaly detection model to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The metric dimensions associated with the anomaly detection model to
    #   delete.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] stat
    #   The statistic associated with the anomaly detection model to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteAnomalyDetectorInput AWS API Documentation
    #
    class DeleteAnomalyDetectorInput < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :stat)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteAnomalyDetectorOutput AWS API Documentation
    #
    class DeleteAnomalyDetectorOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDashboardsInput
    #   data as a hash:
    #
    #       {
    #         dashboard_names: ["DashboardName"], # required
    #       }
    #
    # @!attribute [rw] dashboard_names
    #   The dashboards to be deleted. This parameter is required.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteDashboardsInput AWS API Documentation
    #
    class DeleteDashboardsInput < Struct.new(
      :dashboard_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteDashboardsOutput AWS API Documentation
    #
    class DeleteDashboardsOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteInsightRulesInput
    #   data as a hash:
    #
    #       {
    #         rule_names: ["InsightRuleName"], # required
    #       }
    #
    # @!attribute [rw] rule_names
    #   An array of the rule names to delete. If you need to find out the
    #   names of your rules, use [DescribeInsightRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteInsightRulesInput AWS API Documentation
    #
    class DeleteInsightRulesInput < Struct.new(
      :rule_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   An array listing the rules that could not be deleted. You cannot
    #   delete built-in rules.
    #   @return [Array<Types::PartialFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteInsightRulesOutput AWS API Documentation
    #
    class DeleteInsightRulesOutput < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlarmHistoryInput
    #   data as a hash:
    #
    #       {
    #         alarm_name: "AlarmName",
    #         alarm_types: ["CompositeAlarm"], # accepts CompositeAlarm, MetricAlarm
    #         history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         max_records: 1,
    #         next_token: "NextToken",
    #         scan_by: "TimestampDescending", # accepts TimestampDescending, TimestampAscending
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_types
    #   Use this parameter to specify whether you want the operation to
    #   return metric alarms or composite alarms. If you omit this
    #   parameter, only metric alarms are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] history_item_type
    #   The type of alarm histories to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The starting date to retrieve alarm history.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The ending date to retrieve alarm history.
    #   @return [Time]
    #
    # @!attribute [rw] max_records
    #   The maximum number of alarm history records to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @!attribute [rw] scan_by
    #   Specified whether to return the newest or oldest alarm history
    #   first. Specify `TimestampDescending` to have the newest event
    #   history returned first, and specify `TimestampAscending` to have the
    #   oldest history returned first.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmHistoryInput AWS API Documentation
    #
    class DescribeAlarmHistoryInput < Struct.new(
      :alarm_name,
      :alarm_types,
      :history_item_type,
      :start_date,
      :end_date,
      :max_records,
      :next_token,
      :scan_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_history_items
    #   The alarm histories, in JSON format.
    #   @return [Array<Types::AlarmHistoryItem>]
    #
    # @!attribute [rw] next_token
    #   The token that marks the start of the next batch of returned
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmHistoryOutput AWS API Documentation
    #
    class DescribeAlarmHistoryOutput < Struct.new(
      :alarm_history_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlarmsForMetricInput
    #   data as a hash:
    #
    #       {
    #         metric_name: "MetricName", # required
    #         namespace: "Namespace", # required
    #         statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
    #         extended_statistic: "ExtendedStatistic",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #         period: 1,
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       }
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric, other than percentiles. For percentile
    #   statistics, use `ExtendedStatistics`.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric. Specify a value between
    #   p0.0 and p100.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions associated with the metric. If the metric has any
    #   associated dimensions, you must specify them in order for the call
    #   to succeed.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit for the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsForMetricInput AWS API Documentation
    #
    class DescribeAlarmsForMetricInput < Struct.new(
      :metric_name,
      :namespace,
      :statistic,
      :extended_statistic,
      :dimensions,
      :period,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_alarms
    #   The information for each alarm with the specified metric.
    #   @return [Array<Types::MetricAlarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsForMetricOutput AWS API Documentation
    #
    class DescribeAlarmsForMetricOutput < Struct.new(
      :metric_alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlarmsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"],
    #         alarm_name_prefix: "AlarmNamePrefix",
    #         alarm_types: ["CompositeAlarm"], # accepts CompositeAlarm, MetricAlarm
    #         children_of_alarm_name: "AlarmName",
    #         parents_of_alarm_name: "AlarmName",
    #         state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
    #         action_prefix: "ActionPrefix",
    #         max_records: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The names of the alarms to retrieve information about.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_name_prefix
    #   An alarm name prefix. If you specify this parameter, you receive
    #   information about all alarms that have names that start with this
    #   prefix.
    #
    #   If this parameter is specified, you cannot specify `AlarmNames`.
    #   @return [String]
    #
    # @!attribute [rw] alarm_types
    #   Use this parameter to specify whether you want the operation to
    #   return metric alarms or composite alarms. If you omit this
    #   parameter, only metric alarms are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] children_of_alarm_name
    #   If you use this parameter and specify the name of a composite alarm,
    #   the operation returns information about the "children" alarms of
    #   the alarm you specify. These are the metric alarms and composite
    #   alarms referenced in the `AlarmRule` field of the composite alarm
    #   that you specify in `ChildrenOfAlarmName`. Information about the
    #   composite alarm that you name in `ChildrenOfAlarmName` is not
    #   returned.
    #
    #   If you specify `ChildrenOfAlarmName`, you cannot specify any other
    #   parameters in the request except for `MaxRecords` and `NextToken`.
    #   If you do so, you receive a validation error.
    #
    #   <note markdown="1"> Only the `Alarm Name`, `ARN`, `StateValue`
    #   (OK/ALARM/INSUFFICIENT\_DATA), and `StateUpdatedTimestamp`
    #   information are returned by this operation when you use this
    #   parameter. To get complete information about these alarms, perform
    #   another `DescribeAlarms` operation and specify the parent alarm
    #   names in the `AlarmNames` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parents_of_alarm_name
    #   If you use this parameter and specify the name of a metric or
    #   composite alarm, the operation returns information about the
    #   "parent" alarms of the alarm you specify. These are the composite
    #   alarms that have `AlarmRule` parameters that reference the alarm
    #   named in `ParentsOfAlarmName`. Information about the alarm that you
    #   specify in `ParentsOfAlarmName` is not returned.
    #
    #   If you specify `ParentsOfAlarmName`, you cannot specify any other
    #   parameters in the request except for `MaxRecords` and `NextToken`.
    #   If you do so, you receive a validation error.
    #
    #   <note markdown="1"> Only the Alarm Name and ARN are returned by this operation when you
    #   use this parameter. To get complete information about these alarms,
    #   perform another `DescribeAlarms` operation and specify the parent
    #   alarm names in the `AlarmNames` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] state_value
    #   Specify this parameter to receive information only about alarms that
    #   are currently in the state that you specify.
    #   @return [String]
    #
    # @!attribute [rw] action_prefix
    #   Use this parameter to filter the results of the operation to only
    #   those alarms that use a certain alarm action. For example, you could
    #   specify the ARN of an SNS topic to find all alarms that send
    #   notifications to that topic.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of alarm descriptions to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsInput AWS API Documentation
    #
    class DescribeAlarmsInput < Struct.new(
      :alarm_names,
      :alarm_name_prefix,
      :alarm_types,
      :children_of_alarm_name,
      :parents_of_alarm_name,
      :state_value,
      :action_prefix,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] composite_alarms
    #   The information about any composite alarms returned by the
    #   operation.
    #   @return [Array<Types::CompositeAlarm>]
    #
    # @!attribute [rw] metric_alarms
    #   The information about any metric alarms returned by the operation.
    #   @return [Array<Types::MetricAlarm>]
    #
    # @!attribute [rw] next_token
    #   The token that marks the start of the next batch of returned
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsOutput AWS API Documentation
    #
    class DescribeAlarmsOutput < Struct.new(
      :composite_alarms,
      :metric_alarms,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAnomalyDetectorsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         namespace: "Namespace",
    #         metric_name: "MetricName",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. The
    #   maximum value that you can specify is 100.
    #
    #   To retrieve the remaining results, make another call with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   Limits the results to only the anomaly detection models that are
    #   associated with the specified namespace.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   Limits the results to only the anomaly detection models that are
    #   associated with the specified metric name. If there are multiple
    #   metrics with this name in different namespaces that have anomaly
    #   detection models, they're all returned.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   Limits the results to only the anomaly detection models that are
    #   associated with the specified metric dimensions. If there are
    #   multiple metrics that have these dimensions and have anomaly
    #   detection models associated, they're all returned.
    #   @return [Array<Types::Dimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAnomalyDetectorsInput AWS API Documentation
    #
    class DescribeAnomalyDetectorsInput < Struct.new(
      :next_token,
      :max_results,
      :namespace,
      :metric_name,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detectors
    #   The list of anomaly detection models returned by the operation.
    #   @return [Array<Types::AnomalyDetector>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent operation to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAnomalyDetectorsOutput AWS API Documentation
    #
    class DescribeAnomalyDetectorsOutput < Struct.new(
      :anomaly_detectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInsightRulesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This parameter is not currently used. Reserved for future use. If it
    #   is used in the future, the maximum value might be different.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeInsightRulesInput AWS API Documentation
    #
    class DescribeInsightRulesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] insight_rules
    #   The rules returned by the operation.
    #   @return [Array<Types::InsightRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeInsightRulesOutput AWS API Documentation
    #
    class DescribeInsightRulesOutput < Struct.new(
      :next_token,
      :insight_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dimension is a name/value pair that is part of the identity of a
    # metric. You can assign up to 10 dimensions to a metric. Because
    # dimensions are part of the unique identifier for a metric, whenever
    # you add a unique name/value pair to one of your metrics, you are
    # creating a new variation of that metric.
    #
    # @note When making an API call, you may pass Dimension
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the dimension. Dimension names cannot contain blank
    #   spaces or non-ASCII characters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents filters for a dimension.
    #
    # @note When making an API call, you may pass DimensionFilter
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue",
    #       }
    #
    # @!attribute [rw] name
    #   The dimension name to be matched.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension to be matched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DimensionFilter AWS API Documentation
    #
    class DimensionFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableAlarmActionsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"], # required
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The names of the alarms.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DisableAlarmActionsInput AWS API Documentation
    #
    class DisableAlarmActionsInput < Struct.new(
      :alarm_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableInsightRulesInput
    #   data as a hash:
    #
    #       {
    #         rule_names: ["InsightRuleName"], # required
    #       }
    #
    # @!attribute [rw] rule_names
    #   An array of the rule names to disable. If you need to find out the
    #   names of your rules, use [DescribeInsightRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DisableInsightRulesInput AWS API Documentation
    #
    class DisableInsightRulesInput < Struct.new(
      :rule_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   An array listing the rules that could not be disabled. You cannot
    #   disable built-in rules.
    #   @return [Array<Types::PartialFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DisableInsightRulesOutput AWS API Documentation
    #
    class DisableInsightRulesOutput < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableAlarmActionsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"], # required
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The names of the alarms.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/EnableAlarmActionsInput AWS API Documentation
    #
    class EnableAlarmActionsInput < Struct.new(
      :alarm_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableInsightRulesInput
    #   data as a hash:
    #
    #       {
    #         rule_names: ["InsightRuleName"], # required
    #       }
    #
    # @!attribute [rw] rule_names
    #   An array of the rule names to enable. If you need to find out the
    #   names of your rules, use [DescribeInsightRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/EnableInsightRulesInput AWS API Documentation
    #
    class EnableInsightRulesInput < Struct.new(
      :rule_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   An array listing the rules that could not be enabled. You cannot
    #   disable or enable built-in rules.
    #   @return [Array<Types::PartialFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/EnableInsightRulesOutput AWS API Documentation
    #
    class EnableInsightRulesOutput < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDashboardInput
    #   data as a hash:
    #
    #       {
    #         dashboard_name: "DashboardName", # required
    #       }
    #
    # @!attribute [rw] dashboard_name
    #   The name of the dashboard to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetDashboardInput AWS API Documentation
    #
    class GetDashboardInput < Struct.new(
      :dashboard_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_body
    #   The detailed information about the dashboard, including what widgets
    #   are included and their location on the dashboard. For more
    #   information about the `DashboardBody` syntax, see [Dashboard Body
    #   Structure and Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html
    #   @return [String]
    #
    # @!attribute [rw] dashboard_name
    #   The name of the dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetDashboardOutput AWS API Documentation
    #
    class GetDashboardOutput < Struct.new(
      :dashboard_arn,
      :dashboard_body,
      :dashboard_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightRuleReportInput
    #   data as a hash:
    #
    #       {
    #         rule_name: "InsightRuleName", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         period: 1, # required
    #         max_contributor_count: 1,
    #         metrics: ["InsightRuleMetricName"],
    #         order_by: "InsightRuleOrderBy",
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the rule that you want to see data from.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the data to use in the report. When used in a raw
    #   HTTP Query API, it is formatted as `yyyy-MM-dd'T'HH:mm:ss`. For
    #   example, `2019-07-01T23:59:59`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the data to use in the report. When used in a raw
    #   HTTP Query API, it is formatted as `yyyy-MM-dd'T'HH:mm:ss`. For
    #   example, `2019-07-01T23:59:59`.
    #   @return [Time]
    #
    # @!attribute [rw] period
    #   The period, in seconds, to use for the statistics in the
    #   `InsightRuleMetricDatapoint` results.
    #   @return [Integer]
    #
    # @!attribute [rw] max_contributor_count
    #   The maximum number of contributors to include in the report. The
    #   range is 1 to 100. If you omit this, the default of 10 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] metrics
    #   Specifies which metrics to use for aggregation of contributor values
    #   for the report. You can specify one or more of the following
    #   metrics:
    #
    #   * `UniqueContributors` -- the number of unique contributors for each
    #     data point.
    #
    #   * `MaxContributorValue` -- the value of the top contributor for each
    #     data point. The identity of the contributor might change for each
    #     data point in the graph.
    #
    #     If this rule aggregates by COUNT, the top contributor for each
    #     data point is the contributor with the most occurrences in that
    #     period. If the rule aggregates by SUM, the top contributor is the
    #     contributor with the highest sum in the log field specified by the
    #     rule's `Value`, during that period.
    #
    #   * `SampleCount` -- the number of data points matched by the rule.
    #
    #   * `Sum` -- the sum of the values from all contributors during the
    #     time period represented by that data point.
    #
    #   * `Minimum` -- the minimum value from a single observation during
    #     the time period represented by that data point.
    #
    #   * `Maximum` -- the maximum value from a single observation during
    #     the time period represented by that data point.
    #
    #   * `Average` -- the average value from all contributors during the
    #     time period represented by that data point.
    #   @return [Array<String>]
    #
    # @!attribute [rw] order_by
    #   Determines what statistic to use to rank the contributors. Valid
    #   values are SUM and MAXIMUM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetInsightRuleReportInput AWS API Documentation
    #
    class GetInsightRuleReportInput < Struct.new(
      :rule_name,
      :start_time,
      :end_time,
      :period,
      :max_contributor_count,
      :metrics,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_labels
    #   An array of the strings used as the keys for this rule. The keys are
    #   the dimensions used to classify contributors. If the rule contains
    #   more than one key, then each unique combination of values for the
    #   keys is counted as a unique contributor.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aggregation_statistic
    #   Specifies whether this rule aggregates contributor data by COUNT or
    #   SUM.
    #   @return [String]
    #
    # @!attribute [rw] aggregate_value
    #   The sum of the values from all individual contributors that match
    #   the rule.
    #   @return [Float]
    #
    # @!attribute [rw] approximate_unique_count
    #   An approximate count of the unique contributors found by this rule
    #   in this time period.
    #   @return [Integer]
    #
    # @!attribute [rw] contributors
    #   An array of the unique contributors found by this rule in this time
    #   period. If the rule contains multiple keys, each combination of
    #   values for the keys counts as a unique contributor.
    #   @return [Array<Types::InsightRuleContributor>]
    #
    # @!attribute [rw] metric_datapoints
    #   A time series of metric data points that matches the time period in
    #   the rule request.
    #   @return [Array<Types::InsightRuleMetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetInsightRuleReportOutput AWS API Documentation
    #
    class GetInsightRuleReportOutput < Struct.new(
      :key_labels,
      :aggregation_statistic,
      :aggregate_value,
      :approximate_unique_count,
      :contributors,
      :metric_datapoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMetricDataInput
    #   data as a hash:
    #
    #       {
    #         metric_data_queries: [ # required
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #           },
    #         ],
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         next_token: "NextToken",
    #         scan_by: "TimestampDescending", # accepts TimestampDescending, TimestampAscending
    #         max_datapoints: 1,
    #       }
    #
    # @!attribute [rw] metric_data_queries
    #   The metric queries to be returned. A single `GetMetricData` call can
    #   include as many as 500 `MetricDataQuery` structures. Each of these
    #   structures can specify either a metric to retrieve, or a math
    #   expression to perform on retrieved data.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @!attribute [rw] start_time
    #   The time stamp indicating the earliest data to be returned.
    #
    #   The value specified is inclusive; results include data points with
    #   the specified time stamp.
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
    #   If you set `Period` to 5, 10, or 30, the start time of your request
    #   is rounded down to the nearest time that corresponds to even 5-,
    #   10-, or 30-second divisions of a minute. For example, if you make a
    #   query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the
    #   start time of your request is rounded down and you receive data from
    #   01:05:10 to 01:05:20. If you make a query at 15:07:17 for the
    #   previous 5 minutes of data, using a period of 5 seconds, you receive
    #   data timestamped between 15:02:15 and 15:07:15.
    #
    #   For better performance, specify `StartTime` and `EndTime` values
    #   that align with the value of the metric's `Period` and sync up with
    #   the beginning and end of an hour. For example, if the `Period` of a
    #   metric is 5 minutes, specifying 12:05 or 12:30 as `StartTime` can
    #   get a faster response from CloudWatch than setting 12:07 or 12:29 as
    #   the `StartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time stamp indicating the latest data to be returned.
    #
    #   The value specified is exclusive; results include data points up to
    #   the specified time stamp.
    #
    #   For better performance, specify `StartTime` and `EndTime` values
    #   that align with the value of the metric's `Period` and sync up with
    #   the beginning and end of an hour. For example, if the `Period` of a
    #   metric is 5 minutes, specifying 12:05 or 12:30 as `EndTime` can get
    #   a faster response from CloudWatch than setting 12:07 or 12:29 as the
    #   `EndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   Include this value, if it was returned by the previous call, to get
    #   the next set of data points.
    #   @return [String]
    #
    # @!attribute [rw] scan_by
    #   The order in which data points should be returned.
    #   `TimestampDescending` returns the newest data first and paginates
    #   when the `MaxDatapoints` limit is reached. `TimestampAscending`
    #   returns the oldest data first and paginates when the `MaxDatapoints`
    #   limit is reached.
    #   @return [String]
    #
    # @!attribute [rw] max_datapoints
    #   The maximum number of data points the request should return before
    #   paginating. If you omit this, the default of 100,800 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricDataInput AWS API Documentation
    #
    class GetMetricDataInput < Struct.new(
      :metric_data_queries,
      :start_time,
      :end_time,
      :next_token,
      :scan_by,
      :max_datapoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_data_results
    #   The metrics that are returned, including the metric name, namespace,
    #   and dimensions.
    #   @return [Array<Types::MetricDataResult>]
    #
    # @!attribute [rw] next_token
    #   A token that marks the next batch of returned results.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   Contains a message about this `GetMetricData` operation, if the
    #   operation results in such a message. An example of a message that
    #   might be returned is `Maximum number of allowed metrics exceeded`.
    #   If there is a message, as much of the operation as possible is still
    #   executed.
    #
    #   A message appears here only if it is related to the global
    #   `GetMetricData` operation. Any message about a specific metric
    #   returned by the operation appears in the `MetricDataResult` object
    #   returned for that metric.
    #   @return [Array<Types::MessageData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricDataOutput AWS API Documentation
    #
    class GetMetricDataOutput < Struct.new(
      :metric_data_results,
      :next_token,
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMetricStatisticsInput
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
    #         statistics: ["SampleCount"], # accepts SampleCount, Average, Sum, Minimum, Maximum
    #         extended_statistics: ["ExtendedStatistic"],
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric, with or without spaces.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric, with or without spaces.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions. If the metric contains multiple dimensions, you must
    #   include a value for each dimension. CloudWatch treats each unique
    #   combination of dimensions as a separate metric. If a specific
    #   combination of dimensions was not published, you can't retrieve
    #   statistics for it. You must specify the same dimensions that were
    #   used when the metrics were created. For an example, see [Dimension
    #   Combinations][1] in the *Amazon CloudWatch User Guide*. For more
    #   information about specifying dimensions, see [Publishing Metrics][2]
    #   in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] start_time
    #   The time stamp that determines the first data point to return. Start
    #   times are evaluated relative to the time that CloudWatch receives
    #   the request.
    #
    #   The value specified is inclusive; results include data points with
    #   the specified time stamp. In a raw HTTP query, the time stamp must
    #   be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).
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
    #   If you set `Period` to 5, 10, or 30, the start time of your request
    #   is rounded down to the nearest time that corresponds to even 5-,
    #   10-, or 30-second divisions of a minute. For example, if you make a
    #   query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the
    #   start time of your request is rounded down and you receive data from
    #   01:05:10 to 01:05:20. If you make a query at 15:07:17 for the
    #   previous 5 minutes of data, using a period of 5 seconds, you receive
    #   data timestamped between 15:02:15 and 15:07:15.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time stamp that determines the last data point to return.
    #
    #   The value specified is exclusive; results include data points up to
    #   the specified time stamp. In a raw HTTP query, the time stamp must
    #   be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).
    #   @return [Time]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points. For
    #   metrics with regular resolution, a period can be as short as one
    #   minute (60 seconds) and must be a multiple of 60. For
    #   high-resolution metrics that are collected at intervals of less than
    #   one minute, the period can be 1, 5, 10, 30, 60, or any multiple of
    #   60. High-resolution metrics are those metrics stored by a
    #   `PutMetricData` call that includes a `StorageResolution` of 1
    #   second.
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
    #   * Start time greater than 63 days ago - Use a multiple of 3600
    #     seconds (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] statistics
    #   The metric statistics, other than percentile. For percentile
    #   statistics, use `ExtendedStatistics`. When calling
    #   `GetMetricStatistics`, you must specify either `Statistics` or
    #   `ExtendedStatistics`, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] extended_statistics
    #   The percentile statistics. Specify values between p0.0 and p100.
    #   When calling `GetMetricStatistics`, you must specify either
    #   `Statistics` or `ExtendedStatistics`, but not both. Percentile
    #   statistics are not available for metrics when any of the metric
    #   values are negative numbers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unit
    #   The unit for a given metric. If you omit `Unit`, all data that was
    #   collected with any unit is returned, along with the corresponding
    #   units that were specified when the data was reported to CloudWatch.
    #   If you specify a unit, the operation returns only data that was
    #   collected with that unit specified. If you specify a unit that does
    #   not match the data collected, the results of the operation are null.
    #   CloudWatch does not perform unit conversions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricStatisticsInput AWS API Documentation
    #
    class GetMetricStatisticsInput < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :start_time,
      :end_time,
      :period,
      :statistics,
      :extended_statistics,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label
    #   A label for the specified metric.
    #   @return [String]
    #
    # @!attribute [rw] datapoints
    #   The data points for the specified metric.
    #   @return [Array<Types::Datapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricStatisticsOutput AWS API Documentation
    #
    class GetMetricStatisticsOutput < Struct.new(
      :label,
      :datapoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMetricWidgetImageInput
    #   data as a hash:
    #
    #       {
    #         metric_widget: "MetricWidget", # required
    #         output_format: "OutputFormat",
    #       }
    #
    # @!attribute [rw] metric_widget
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
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The format of the resulting image. Only PNG images are supported.
    #
    #   The default is `png`. If you specify `png`, the API returns an HTTP
    #   response with the content-type set to `text/xml`. The image data is
    #   in a `MetricWidgetImage` field. For example:
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
    #   The `image/png` setting is intended only for custom HTTP requests.
    #   For most use cases, and all actions using an AWS SDK, you should use
    #   `png`. If you specify `image/png`, the HTTP response has a
    #   content-type set to `image/png`, and the body of the response is a
    #   PNG image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricWidgetImageInput AWS API Documentation
    #
    class GetMetricWidgetImageInput < Struct.new(
      :metric_widget,
      :output_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_widget_image
    #   The image of the graph, in the output format specified. The output
    #   is base64-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricWidgetImageOutput AWS API Documentation
    #
    class GetMetricWidgetImageOutput < Struct.new(
      :metric_widget_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the definition for a Contributor Insights
    # rule.
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Indicates whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   For rules that you create, this is always `\{"Name":
    #   "CloudWatchLogRule", "Version": 1\}`. For built-in rules, this is
    #   `\{"Name": "ServiceLogRule", "Version": 1\}`
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of the rule, as a JSON object. The definition
    #   contains the keywords used to define contributors, the value to
    #   aggregate on if this rule returns a sum instead of a count, and the
    #   filters. For details on the valid syntax, see [Contributor Insights
    #   Rule Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InsightRule AWS API Documentation
    #
    class InsightRule < Struct.new(
      :name,
      :state,
      :schema,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the unique contributors found by a Contributor Insights rule.
    # If the rule contains multiple keys, then a unique contributor is a
    # unique combination of values from all the keys in the rule.
    #
    # If the rule contains a single key, then each unique contributor is
    # each unique value for this key.
    #
    # For more information, see [GetInsightRuleReport][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html
    #
    # @!attribute [rw] keys
    #   One of the log entry field keywords that is used to define
    #   contributors for this rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] approximate_aggregate_value
    #   An approximation of the aggregate value that comes from this
    #   contributor.
    #   @return [Float]
    #
    # @!attribute [rw] datapoints
    #   An array of the data points where this contributor is present. Only
    #   the data points when this contributor appeared are included in the
    #   array.
    #   @return [Array<Types::InsightRuleContributorDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InsightRuleContributor AWS API Documentation
    #
    class InsightRuleContributor < Struct.new(
      :keys,
      :approximate_aggregate_value,
      :datapoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # One data point related to one contributor.
    #
    # For more information, see [GetInsightRuleReport][1] and
    # [InsightRuleContributor][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_InsightRuleContributor.html
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the data point.
    #   @return [Time]
    #
    # @!attribute [rw] approximate_value
    #   The approximate value that this contributor added during this
    #   timestamp.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InsightRuleContributorDatapoint AWS API Documentation
    #
    class InsightRuleContributorDatapoint < Struct.new(
      :timestamp,
      :approximate_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # One data point from the metric time series returned in a Contributor
    # Insights rule report.
    #
    # For more information, see [GetInsightRuleReport][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the data point.
    #   @return [Time]
    #
    # @!attribute [rw] unique_contributors
    #   The number of unique contributors who published data during this
    #   timestamp.
    #
    #   This statistic is returned only if you included it in the `Metrics`
    #   array in your request.
    #   @return [Float]
    #
    # @!attribute [rw] max_contributor_value
    #   The maximum value provided by one contributor during this timestamp.
    #   Each timestamp is evaluated separately, so the identity of the max
    #   contributor could be different for each timestamp.
    #
    #   This statistic is returned only if you included it in the `Metrics`
    #   array in your request.
    #   @return [Float]
    #
    # @!attribute [rw] sample_count
    #   The number of occurrences that matched the rule during this data
    #   point.
    #
    #   This statistic is returned only if you included it in the `Metrics`
    #   array in your request.
    #   @return [Float]
    #
    # @!attribute [rw] average
    #   The average value from all contributors during the time period
    #   represented by that data point.
    #
    #   This statistic is returned only if you included it in the `Metrics`
    #   array in your request.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of the values from all contributors during the time period
    #   represented by that data point.
    #
    #   This statistic is returned only if you included it in the `Metrics`
    #   array in your request.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum value from a single contributor during the time period
    #   represented by that data point.
    #
    #   This statistic is returned only if you included it in the `Metrics`
    #   array in your request.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum value from a single occurence from a single contributor
    #   during the time period represented by that data point.
    #
    #   This statistic is returned only if you included it in the `Metrics`
    #   array in your request.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InsightRuleMetricDatapoint AWS API Documentation
    #
    class InsightRuleMetricDatapoint < Struct.new(
      :timestamp,
      :unique_contributors,
      :max_contributor_value,
      :sample_count,
      :average,
      :sum,
      :minimum,
      :maximum)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request processing has failed due to some unknown error, exception, or
    # failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InternalServiceFault AWS API Documentation
    #
    class InternalServiceFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data was not syntactically valid JSON.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InvalidFormatFault AWS API Documentation
    #
    class InvalidFormatFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The next token specified is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InvalidNextToken AWS API Documentation
    #
    class InvalidNextToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters were used together that cannot be used together.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of an input parameter is bad or out-of-range.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation exceeded one or more limits.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # The quota for alarms for this customer has already been reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/LimitExceededFault AWS API Documentation
    #
    class LimitExceededFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDashboardsInput
    #   data as a hash:
    #
    #       {
    #         dashboard_name_prefix: "DashboardNamePrefix",
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] dashboard_name_prefix
    #   If you specify this parameter, only the dashboards with names
    #   starting with the specified string are listed. The maximum length is
    #   255, and valid characters are A-Z, a-z, 0-9, ".", "-", and
    #   "\_".
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListDashboardsInput AWS API Documentation
    #
    class ListDashboardsInput < Struct.new(
      :dashboard_name_prefix,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_entries
    #   The list of matching dashboards.
    #   @return [Array<Types::DashboardEntry>]
    #
    # @!attribute [rw] next_token
    #   The token that marks the start of the next batch of returned
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListDashboardsOutput AWS API Documentation
    #
    class ListDashboardsOutput < Struct.new(
      :dashboard_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMetricsInput
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
    #         recently_active: "PT3H", # accepts PT3H
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace to filter against.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to filter against.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions to filter against.
    #   @return [Array<Types::DimensionFilter>]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @!attribute [rw] recently_active
    #   To filter the results to show only metrics that have had data points
    #   published in the past three hours, specify this parameter with a
    #   value of `PT3H`. This is the only valid value for this parameter.
    #
    #   The results that are returned are an approximation of the value you
    #   specify. There is a low probability that the returned results
    #   include metrics with last published data as much as 40 minutes more
    #   than the specified time interval.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListMetricsInput AWS API Documentation
    #
    class ListMetricsInput < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :next_token,
      :recently_active)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   The metrics that match your request.
    #   @return [Array<Types::Metric>]
    #
    # @!attribute [rw] next_token
    #   The token that marks the start of the next batch of returned
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListMetricsOutput AWS API Documentation
    #
    class ListMetricsOutput < Struct.new(
      :metrics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch resource that you want to view tags for.
    #
    #   The ARN format of an alarm is
    #   `arn:aws:cloudwatch:Region:account-id:alarm:alarm-name `
    #
    #   The ARN format of a Contributor Insights rule is
    #   `arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name
    #   `
    #
    #   For more information about ARN format, see [ Resource Types Defined
    #   by Amazon CloudWatch][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource you
    #   specified.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A message returned by the `GetMetricData`API, including a code and a
    # description.
    #
    # @!attribute [rw] code
    #   The error code or status code associated with the message.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The message text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MessageData AWS API Documentation
    #
    class MessageData < Struct.new(
      :code,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a specific metric.
    #
    # @note When making an API call, you may pass Metric
    #   data as a hash:
    #
    #       {
    #         namespace: "Namespace",
    #         metric_name: "MetricName",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric. This is a required field.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric.
    #   @return [Array<Types::Dimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Metric AWS API Documentation
    #
    class Metric < Struct.new(
      :namespace,
      :metric_name,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about a metric alarm.
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_description
    #   The description of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration_updated_timestamp
    #   The time stamp of the last update to the alarm configuration.
    #   @return [Time]
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state.
    #   @return [Boolean]
    #
    # @!attribute [rw] ok_actions
    #   The actions to execute when this alarm transitions to the `OK` state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_actions
    #   The actions to execute when this alarm transitions to the `ALARM`
    #   state from any other state. Each action is specified as an Amazon
    #   Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   `INSUFFICIENT_DATA` state from any other state. Each action is
    #   specified as an Amazon Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] state_value
    #   The state value for the alarm.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   An explanation for the alarm state, in text format.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_data
    #   An explanation for the alarm state, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] state_updated_timestamp
    #   The time stamp of the last update to the alarm state.
    #   @return [Time]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric associated with the alarm, if this is an
    #   alarm based on a single metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric associated with the alarm, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric associated with the alarm.
    #   Specify a value between p0.0 and p100.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric associated with the alarm.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] datapoints_to_alarm
    #   The number of data points that must be breaching to trigger the
    #   alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The value to compare with the specified statistic.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic and threshold. The specified statistic value is used as
    #   the first operand.
    #   @return [String]
    #
    # @!attribute [rw] treat_missing_data
    #   Sets how this alarm is to handle missing data points. If this
    #   parameter is omitted, the default behavior of `missing` is used.
    #   @return [String]
    #
    # @!attribute [rw] evaluate_low_sample_count_percentile
    #   Used only for alarms based on percentiles. If `ignore`, the alarm
    #   state does not change during periods with too few data points to be
    #   statistically significant. If `evaluate` or this parameter is not
    #   used, the alarm is always evaluated and possibly changes state no
    #   matter how many data points are available.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   An array of MetricDataQuery structures, used in an alarm based on a
    #   metric math expression. Each structure either retrieves a metric or
    #   performs a math expression. One item in the Metrics array is the
    #   math expression that the alarm watches. This expression by
    #   designated by having `ReturnValue` set to true.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @!attribute [rw] threshold_metric_id
    #   In an alarm based on an anomaly detection model, this is the ID of
    #   the `ANOMALY_DETECTION_BAND` function used as the threshold for the
    #   alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricAlarm AWS API Documentation
    #
    class MetricAlarm < Struct.new(
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
      :extended_statistic,
      :dimensions,
      :period,
      :unit,
      :evaluation_periods,
      :datapoints_to_alarm,
      :threshold,
      :comparison_operator,
      :treat_missing_data,
      :evaluate_low_sample_count_percentile,
      :metrics,
      :threshold_metric_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure is used in both `GetMetricData` and `PutMetricAlarm`.
    # The supported use of this structure is different for those two
    # operations.
    #
    # When used in `GetMetricData`, it indicates the metric data to return,
    # and whether this call is just retrieving a batch set of data for one
    # metric, or is performing a math expression on metric data. A single
    # `GetMetricData` call can include up to 500 `MetricDataQuery`
    # structures.
    #
    # When used in `PutMetricAlarm`, it enables you to create an alarm based
    # on a metric math expression. Each `MetricDataQuery` in the array
    # specifies either a metric to retrieve, or a math expression to be
    # performed on retrieved metrics. A single `PutMetricAlarm` call can
    # include up to 20 `MetricDataQuery` structures in the array. The 20
    # structures can include as many as 10 structures that contain a
    # `MetricStat` parameter to retrieve a metric, and as many as 10
    # structures that contain the `Expression` parameter to perform a math
    # expression. Of those `Expression` structures, one must have `True` as
    # the value for `ReturnData`. The result of this expression is the value
    # the alarm watches.
    #
    # Any expression used in a `PutMetricAlarm` operation must return a
    # single time series. For more information, see [Metric Math Syntax and
    # Functions][1] in the *Amazon CloudWatch User Guide*.
    #
    # Some of the parameters of this structure also have different uses
    # whether you are using this structure in a `GetMetricData` operation or
    # a `PutMetricAlarm` operation. These differences are explained in the
    # following parameter list.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax
    #
    # @note When making an API call, you may pass MetricDataQuery
    #   data as a hash:
    #
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
    #       }
    #
    # @!attribute [rw] id
    #   A short name used to tie this object to the results in the response.
    #   This name must be unique within a single call to `GetMetricData`. If
    #   you are performing math expressions on this set of data, this name
    #   represents that data and can serve as a variable in the mathematical
    #   expression. The valid characters are letters, numbers, and
    #   underscore. The first character must be a lowercase letter.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   The metric to be returned, along with statistics, period, and units.
    #   Use this parameter only if this object is retrieving a metric and
    #   not performing a math expression on returned data.
    #
    #   Within one MetricDataQuery object, you must specify either
    #   `Expression` or `MetricStat` but not both.
    #   @return [Types::MetricStat]
    #
    # @!attribute [rw] expression
    #   The math expression to be performed on the returned data, if this
    #   object is performing a math expression. This expression can use the
    #   `Id` of the other metrics to refer to those metrics, and can also
    #   use the `Id` of other expressions to use the result of those
    #   expressions. For more information about metric math expressions, see
    #   [Metric Math Syntax and Functions][1] in the *Amazon CloudWatch User
    #   Guide*.
    #
    #   Within each MetricDataQuery object, you must specify either
    #   `Expression` or `MetricStat` but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A human-readable label for this metric or expression. This is
    #   especially useful if this is an expression, so that you know what
    #   the value represents. If the metric or expression is shown in a
    #   CloudWatch dashboard widget, the label is shown. If Label is
    #   omitted, CloudWatch generates a default.
    #   @return [String]
    #
    # @!attribute [rw] return_data
    #   When used in `GetMetricData`, this option indicates whether to
    #   return the timestamps and raw data values of this metric. If you are
    #   performing this call just to do math expressions and do not also
    #   need the raw data returned, you can specify `False`. If you omit
    #   this, the default of `True` is used.
    #
    #   When used in `PutMetricAlarm`, specify `True` for the one expression
    #   result to use as the alarm. For all other metrics and expressions in
    #   the same `PutMetricAlarm` operation, specify `ReturnData` as False.
    #   @return [Boolean]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points. For
    #   metrics with regular resolution, a period can be as short as one
    #   minute (60 seconds) and must be a multiple of 60. For
    #   high-resolution metrics that are collected at intervals of less than
    #   one minute, the period can be 1, 5, 10, 30, 60, or any multiple of
    #   60. High-resolution metrics are those metrics stored by a
    #   `PutMetricData` operation that includes a `StorageResolution of 1
    #   second`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricDataQuery AWS API Documentation
    #
    class MetricDataQuery < Struct.new(
      :id,
      :metric_stat,
      :expression,
      :label,
      :return_data,
      :period)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `GetMetricData` call returns an array of `MetricDataResult`
    # structures. Each of these structures includes the data points for that
    # metric, along with the timestamps of those data points and other
    # identifying information.
    #
    # @!attribute [rw] id
    #   The short name you specified to represent this metric.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The human-readable label associated with the data.
    #   @return [String]
    #
    # @!attribute [rw] timestamps
    #   The timestamps for the data points, formatted in Unix timestamp
    #   format. The number of timestamps always matches the number of values
    #   and the value for Timestamps\[x\] is Values\[x\].
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The data points for the metric corresponding to `Timestamps`. The
    #   number of values always matches the number of timestamps and the
    #   timestamp for Values\[x\] is Timestamps\[x\].
    #   @return [Array<Float>]
    #
    # @!attribute [rw] status_code
    #   The status of the returned data. `Complete` indicates that all data
    #   points in the requested time range were returned. `PartialData`
    #   means that an incomplete set of data points were returned. You can
    #   use the `NextToken` value that was returned and repeat your request
    #   to get more data points. `NextToken` is not returned if you are
    #   performing a math expression. `InternalError` indicates that an
    #   error occurred. Retry your request using `NextToken`, if present.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   A list of messages with additional information about the data
    #   returned.
    #   @return [Array<Types::MessageData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricDataResult AWS API Documentation
    #
    class MetricDataResult < Struct.new(
      :id,
      :label,
      :timestamps,
      :values,
      :status_code,
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encapsulates the information sent to either create a metric or add new
    # values to be aggregated into an existing metric.
    #
    # @note When making an API call, you may pass MetricDatum
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
    #         values: [1.0],
    #         counts: [1.0],
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         storage_resolution: 1,
    #       }
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions associated with the metric.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] timestamp
    #   The time the metric data was received, expressed as the number of
    #   milliseconds since Jan 1, 1970 00:00:00 UTC.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   The value for the metric.
    #
    #   Although the parameter accepts numbers of type Double, CloudWatch
    #   rejects values that are either too small or too large. Values must
    #   be in the range of -2^360 to 2^360. In addition, special values (for
    #   example, NaN, +Infinity, -Infinity) are not supported.
    #   @return [Float]
    #
    # @!attribute [rw] statistic_values
    #   The statistical values for the metric.
    #   @return [Types::StatisticSet]
    #
    # @!attribute [rw] values
    #   Array of numbers representing the values for the metric during the
    #   period. Each unique value is listed just once in this array, and the
    #   corresponding number in the `Counts` array specifies the number of
    #   times that value occurred during the period. You can include up to
    #   150 unique values in each `PutMetricData` action that specifies a
    #   `Values` array.
    #
    #   Although the `Values` array accepts numbers of type `Double`,
    #   CloudWatch rejects values that are either too small or too large.
    #   Values must be in the range of -2^360 to 2^360. In addition, special
    #   values (for example, NaN, +Infinity, -Infinity) are not supported.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] counts
    #   Array of numbers that is used along with the `Values` array. Each
    #   number in the `Count` array is the number of times the corresponding
    #   value in the `Values` array occurred during the period.
    #
    #   If you omit the `Counts` array, the default of 1 is used as the
    #   value for each count. If you include a `Counts` array, it must
    #   include the same amount of values as the `Values` array.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] unit
    #   When you are using a `Put` operation, this defines what unit you
    #   want to use when storing the metric.
    #
    #   In a `Get` operation, this displays the unit that is used for the
    #   metric.
    #   @return [String]
    #
    # @!attribute [rw] storage_resolution
    #   Valid values are 1 and 60. Setting this to 1 specifies this metric
    #   as a high-resolution metric, so that CloudWatch stores the metric
    #   with sub-minute resolution down to one second. Setting this to 60
    #   specifies this metric as a regular-resolution metric, which
    #   CloudWatch stores at 1-minute resolution. Currently, high resolution
    #   is available only for custom metrics. For more information about
    #   high-resolution metrics, see [High-Resolution Metrics][1] in the
    #   *Amazon CloudWatch User Guide*.
    #
    #   This field is optional, if you do not specify it the default of 60
    #   is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#high-resolution-metrics
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricDatum AWS API Documentation
    #
    class MetricDatum < Struct.new(
      :metric_name,
      :dimensions,
      :timestamp,
      :value,
      :statistic_values,
      :values,
      :counts,
      :unit,
      :storage_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the metric to be returned, along with the
    # statistics, period, and units.
    #
    # @note When making an API call, you may pass MetricStat
    #   data as a hash:
    #
    #       {
    #         metric: { # required
    #           namespace: "Namespace",
    #           metric_name: "MetricName",
    #           dimensions: [
    #             {
    #               name: "DimensionName", # required
    #               value: "DimensionValue", # required
    #             },
    #           ],
    #         },
    #         period: 1, # required
    #         stat: "Stat", # required
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       }
    #
    # @!attribute [rw] metric
    #   The metric to return, including the metric name, namespace, and
    #   dimensions.
    #   @return [Types::Metric]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points. For
    #   metrics with regular resolution, a period can be as short as one
    #   minute (60 seconds) and must be a multiple of 60. For
    #   high-resolution metrics that are collected at intervals of less than
    #   one minute, the period can be 1, 5, 10, 30, 60, or any multiple of
    #   60. High-resolution metrics are those metrics stored by a
    #   `PutMetricData` call that includes a `StorageResolution` of 1
    #   second.
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
    #   * Start time greater than 63 days ago - Use a multiple of 3600
    #     seconds (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] stat
    #   The statistic to return. It can include any CloudWatch statistic or
    #   extended statistic.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   When you are using a `Put` operation, this defines what unit you
    #   want to use when storing the metric.
    #
    #   In a `Get` operation, if you omit `Unit` then all data that was
    #   collected with any unit is returned, along with the corresponding
    #   units that were specified when the data was reported to CloudWatch.
    #   If you specify a unit, the operation returns only data that was
    #   collected with that unit specified. If you specify a unit that does
    #   not match the data collected, the results of the operation are null.
    #   CloudWatch does not perform unit conversions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricStat AWS API Documentation
    #
    class MetricStat < Struct.new(
      :metric,
      :period,
      :stat,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input parameter that is required is missing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MissingRequiredParameterException AWS API Documentation
    #
    class MissingRequiredParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This array is empty if the API operation was successful for all the
    # rules specified in the request. If the operation could not process one
    # of the rules, the following data is returned for each of those rules.
    #
    # @!attribute [rw] failure_resource
    #   The specified rule that could not be deleted.
    #   @return [String]
    #
    # @!attribute [rw] exception_type
    #   The type of error.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The code of the error.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   A description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PartialFailure AWS API Documentation
    #
    class PartialFailure < Struct.new(
      :failure_resource,
      :exception_type,
      :failure_code,
      :failure_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAnomalyDetectorInput
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
    #         stat: "AnomalyDetectorMetricStat", # required
    #         configuration: {
    #           excluded_time_ranges: [
    #             {
    #               start_time: Time.now, # required
    #               end_time: Time.now, # required
    #             },
    #           ],
    #           metric_timezone: "AnomalyDetectorMetricTimezone",
    #         },
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric to create the anomaly detection model
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to create the anomaly detection model for.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The metric dimensions to create the anomaly detection model for.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] stat
    #   The statistic to use for the metric and the anomaly detection model.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration specifies details about how the anomaly detection
    #   model is to be trained, including time ranges to exclude when
    #   training and updating the model. You can specify as many as 10 time
    #   ranges.
    #
    #   The configuration can also include the time zone to use for the
    #   metric.
    #
    #   You can in
    #   @return [Types::AnomalyDetectorConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutAnomalyDetectorInput AWS API Documentation
    #
    class PutAnomalyDetectorInput < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :stat,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutAnomalyDetectorOutput AWS API Documentation
    #
    class PutAnomalyDetectorOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutCompositeAlarmInput
    #   data as a hash:
    #
    #       {
    #         actions_enabled: false,
    #         alarm_actions: ["ResourceName"],
    #         alarm_description: "AlarmDescription",
    #         alarm_name: "AlarmName", # required
    #         alarm_rule: "AlarmRule", # required
    #         insufficient_data_actions: ["ResourceName"],
    #         ok_actions: ["ResourceName"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state of the composite alarm. The default is `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] alarm_actions
    #   The actions to execute when this alarm transitions to the `ALARM`
    #   state from any other state. Each action is specified as an Amazon
    #   Resource Name (ARN).
    #
    #   Valid Values: `arn:aws:sns:region:account-id:sns-topic-name `
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_description
    #   The description for the composite alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_name
    #   The name for the composite alarm. This name must be unique within
    #   the Region.
    #   @return [String]
    #
    # @!attribute [rw] alarm_rule
    #   An expression that specifies which other alarms are to be evaluated
    #   to determine this composite alarm's state. For each alarm that you
    #   reference, you designate a function that specifies whether that
    #   alarm needs to be in ALARM state, OK state, or INSUFFICIENT\_DATA
    #   state. You can use operators (AND, OR and NOT) to combine multiple
    #   functions in a single expression. You can use parenthesis to
    #   logically group the functions in your expression.
    #
    #   You can use either alarm names or ARNs to reference the other alarms
    #   that are to be evaluated.
    #
    #   Functions can include the following:
    #
    #   * `ALARM("alarm-name or alarm-ARN")` is TRUE if the named alarm is
    #     in ALARM state.
    #
    #   * `OK("alarm-name or alarm-ARN")` is TRUE if the named alarm is in
    #     OK state.
    #
    #   * `INSUFFICIENT_DATA("alarm-name or alarm-ARN")` is TRUE if the
    #     named alarm is in INSUFFICIENT\_DATA state.
    #
    #   * `TRUE` always evaluates to TRUE.
    #
    #   * `FALSE` always evaluates to FALSE.
    #
    #   TRUE and FALSE are useful for testing a complex `AlarmRule`
    #   structure, and for testing your alarm actions.
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
    #     CPUUtilizationTooHigh is in ALARM state and DeploymentInProgress
    #     is not in ALARM state. This example reduces alarm noise during a
    #     known deployment window.
    #
    #   * `(ALARM(CPUUtilizationTooHigh) OR ALARM(DiskReadOpsTooHigh)) AND
    #     OK(NetworkOutTooHigh)` goes into ALARM state if
    #     CPUUtilizationTooHigh OR DiskReadOpsTooHigh is in ALARM state, and
    #     if NetworkOutTooHigh is in OK state. This provides another example
    #     of using a composite alarm to prevent noise. This rule ensures
    #     that you are not notified with an alarm action on high CPU or disk
    #     usage if a known network problem is also occurring.
    #
    #   The `AlarmRule` can specify as many as 100 "children" alarms. The
    #   `AlarmRule` expression can have as many as 500 elements. Elements
    #   are child alarms, TRUE or FALSE statements, and parentheses.
    #   @return [String]
    #
    # @!attribute [rw] insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   `INSUFFICIENT_DATA` state from any other state. Each action is
    #   specified as an Amazon Resource Name (ARN).
    #
    #   Valid Values: `arn:aws:sns:region:account-id:sns-topic-name `
    #   @return [Array<String>]
    #
    # @!attribute [rw] ok_actions
    #   The actions to execute when this alarm transitions to an `OK` state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #
    #   Valid Values: `arn:aws:sns:region:account-id:sns-topic-name `
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the composite alarm. You
    #   can associate as many as 50 tags with an alarm.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions, by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutCompositeAlarmInput AWS API Documentation
    #
    class PutCompositeAlarmInput < Struct.new(
      :actions_enabled,
      :alarm_actions,
      :alarm_description,
      :alarm_name,
      :alarm_rule,
      :insufficient_data_actions,
      :ok_actions,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutDashboardInput
    #   data as a hash:
    #
    #       {
    #         dashboard_name: "DashboardName", # required
    #         dashboard_body: "DashboardBody", # required
    #       }
    #
    # @!attribute [rw] dashboard_name
    #   The name of the dashboard. If a dashboard with this name already
    #   exists, this call modifies that dashboard, replacing its current
    #   contents. Otherwise, a new dashboard is created. The maximum length
    #   is 255, and valid characters are A-Z, a-z, 0-9, "-", and "\_".
    #   This parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_body
    #   The detailed information about the dashboard in JSON format,
    #   including the widgets to include and their location on the
    #   dashboard. This parameter is required.
    #
    #   For more information about the syntax, see [Dashboard Body Structure
    #   and Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutDashboardInput AWS API Documentation
    #
    class PutDashboardInput < Struct.new(
      :dashboard_name,
      :dashboard_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_validation_messages
    #   If the input for `PutDashboard` was correct and the dashboard was
    #   successfully created or modified, this result is empty.
    #
    #   If this result includes only warning messages, then the input was
    #   valid enough for the dashboard to be created or modified, but some
    #   elements of the dashboard might not render.
    #
    #   If this result includes error messages, the input was not valid and
    #   the operation failed.
    #   @return [Array<Types::DashboardValidationMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutDashboardOutput AWS API Documentation
    #
    class PutDashboardOutput < Struct.new(
      :dashboard_validation_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutInsightRuleInput
    #   data as a hash:
    #
    #       {
    #         rule_name: "InsightRuleName", # required
    #         rule_state: "InsightRuleState",
    #         rule_definition: "InsightRuleDefinition", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule_name
    #   A unique name for the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_state
    #   The state of the rule. Valid values are ENABLED and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] rule_definition
    #   The definition of the rule, as a JSON object. For details on the
    #   valid syntax, see [Contributor Insights Rule Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the Contributor Insights
    #   rule. You can associate as many as 50 tags with a rule.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions, by granting a user
    #   permission to access or change only the resources that have certain
    #   tag values.
    #
    #   To be able to associate tags with a rule, you must have the
    #   `cloudwatch:TagResource` permission in addition to the
    #   `cloudwatch:PutInsightRule` permission.
    #
    #   If you are using this operation to update an existing Contributor
    #   Insights rule, any tags you specify in this parameter are ignored.
    #   To change the tags of an existing rule, use [TagResource][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutInsightRuleInput AWS API Documentation
    #
    class PutInsightRuleInput < Struct.new(
      :rule_name,
      :rule_state,
      :rule_definition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutInsightRuleOutput AWS API Documentation
    #
    class PutInsightRuleOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutMetricAlarmInput
    #   data as a hash:
    #
    #       {
    #         alarm_name: "AlarmName", # required
    #         alarm_description: "AlarmDescription",
    #         actions_enabled: false,
    #         ok_actions: ["ResourceName"],
    #         alarm_actions: ["ResourceName"],
    #         insufficient_data_actions: ["ResourceName"],
    #         metric_name: "MetricName",
    #         namespace: "Namespace",
    #         statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
    #         extended_statistic: "ExtendedStatistic",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #         period: 1,
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         evaluation_periods: 1, # required
    #         datapoints_to_alarm: 1,
    #         threshold: 1.0,
    #         comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold, LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, GreaterThanUpperThreshold
    #         treat_missing_data: "TreatMissingData",
    #         evaluate_low_sample_count_percentile: "EvaluateLowSampleCountPercentile",
    #         metrics: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         threshold_metric_id: "MetricId",
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name for the alarm. This name must be unique within the Region.
    #   @return [String]
    #
    # @!attribute [rw] alarm_description
    #   The description for the alarm.
    #   @return [String]
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state. The default is `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] ok_actions
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_actions
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] insufficient_data_actions
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_name
    #   The name for the metric associated with the alarm. For each
    #   `PutMetricAlarm` operation, you must specify either `MetricName` or
    #   a `Metrics` array.
    #
    #   If you are creating an alarm based on a math expression, you cannot
    #   specify this parameter, or any of the `Dimensions`, `Period`,
    #   `Namespace`, `Statistic`, or `ExtendedStatistic` parameters.
    #   Instead, you specify all this information in the `Metrics` array.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace for the metric associated specified in `MetricName`.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric specified in `MetricName`, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`. When
    #   you call `PutMetricAlarm` and specify a `MetricName`, you must
    #   specify either `Statistic` or `ExtendedStatistic,` but not both.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric specified in `MetricName`.
    #   Specify a value between p0.0 and p100. When you call
    #   `PutMetricAlarm` and specify a `MetricName`, you must specify either
    #   `Statistic` or `ExtendedStatistic,` but not both.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric specified in `MetricName`.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] period
    #   The length, in seconds, used each time the metric specified in
    #   `MetricName` is evaluated. Valid values are 10, 30, and any multiple
    #   of 60.
    #
    #   `Period` is required for alarms based on static thresholds. If you
    #   are creating an alarm based on a metric math expression, you specify
    #   the period for each metric within the objects in the `Metrics`
    #   array.
    #
    #   Be sure to specify 10 or 30 only for metrics that are stored by a
    #   `PutMetricData` call with a `StorageResolution` of 1. If you specify
    #   a period of 10 or 30 for a metric that does not have sub-minute
    #   resolution, the alarm still attempts to gather data at the period
    #   rate that you specify. In this case, it does not receive data for
    #   the attempts that do not correspond to a one-minute data resolution,
    #   and the alarm might often lapse into INSUFFICENT\_DATA status.
    #   Specifying 10 or 30 also sets this alarm as a high-resolution alarm,
    #   which has a higher charge than other alarms. For more information
    #   about pricing, see [Amazon CloudWatch Pricing][1].
    #
    #   An alarm's total current evaluation period can be no longer than
    #   one day, so `Period` multiplied by `EvaluationPeriods` cannot be
    #   more than 86,400 seconds.
    #
    #
    #
    #   [1]: https://aws.amazon.com/cloudwatch/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of measure for the statistic. For example, the units for
    #   the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks
    #   the number of bytes that an instance receives on all network
    #   interfaces. You can also specify a unit when you create a custom
    #   metric. Units help provide conceptual meaning to your data. Metric
    #   data points that specify a unit of measure, such as Percent, are
    #   aggregated separately.
    #
    #   If you don't specify `Unit`, CloudWatch retrieves all unit types
    #   that have been published for the metric and attempts to evaluate the
    #   alarm. Usually, metrics are published with only one unit, so the
    #   alarm works as intended.
    #
    #   However, if the metric is published with multiple types of units and
    #   you don't specify a unit, the alarm's behavior is not defined and
    #   it behaves predictably.
    #
    #   We recommend omitting `Unit` so that you don't inadvertently
    #   specify an incorrect unit that is not published for this metric.
    #   Doing so causes the alarm to be stuck in the `INSUFFICIENT DATA`
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold. If you are setting an alarm that requires that a number
    #   of consecutive data points be breaching to trigger the alarm, this
    #   value specifies that number. If you are setting an "M out of N"
    #   alarm, this value is the N.
    #
    #   An alarm's total current evaluation period can be no longer than
    #   one day, so this number multiplied by `Period` cannot be more than
    #   86,400 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] datapoints_to_alarm
    #   The number of data points that must be breaching to trigger the
    #   alarm. This is used only if you are setting an "M out of N" alarm.
    #   In that case, this value is the M. For more information, see
    #   [Evaluating an Alarm][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #
    #   This parameter is required for alarms based on static thresholds,
    #   but should not be used for alarms based on anomaly detection models.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic and threshold. The specified statistic value is used as
    #   the first operand.
    #
    #   The values `LessThanLowerOrGreaterThanUpperThreshold`,
    #   `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used
    #   only for alarms based on anomaly detection models.
    #   @return [String]
    #
    # @!attribute [rw] treat_missing_data
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
    #   @return [String]
    #
    # @!attribute [rw] evaluate_low_sample_count_percentile
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
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   An array of `MetricDataQuery` structures that enable you to create
    #   an alarm based on the result of a metric math expression. For each
    #   `PutMetricAlarm` operation, you must specify either `MetricName` or
    #   a `Metrics` array.
    #
    #   Each item in the `Metrics` array either retrieves a metric or
    #   performs a math expression.
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
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the alarm. You can
    #   associate as many as 50 tags with an alarm.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] threshold_metric_id
    #   If this is an alarm based on an anomaly detection model, make this
    #   value match the ID of the `ANOMALY_DETECTION_BAND` function.
    #
    #   For an example of how to use this parameter, see the **Anomaly
    #   Detection Model Alarm** example on this page.
    #
    #   If your alarm uses this parameter, it cannot have Auto Scaling
    #   actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricAlarmInput AWS API Documentation
    #
    class PutMetricAlarmInput < Struct.new(
      :alarm_name,
      :alarm_description,
      :actions_enabled,
      :ok_actions,
      :alarm_actions,
      :insufficient_data_actions,
      :metric_name,
      :namespace,
      :statistic,
      :extended_statistic,
      :dimensions,
      :period,
      :unit,
      :evaluation_periods,
      :datapoints_to_alarm,
      :threshold,
      :comparison_operator,
      :treat_missing_data,
      :evaluate_low_sample_count_percentile,
      :metrics,
      :tags,
      :threshold_metric_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutMetricDataInput
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
    #             values: [1.0],
    #             counts: [1.0],
    #             unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             storage_resolution: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace for the metric data.
    #
    #   To avoid conflicts with AWS service namespaces, you should not
    #   specify a namespace that begins with `AWS/`
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   The data for the metric. The array can include no more than 20
    #   metrics per call.
    #   @return [Array<Types::MetricDatum>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricDataInput AWS API Documentation
    #
    class PutMetricDataInput < Struct.new(
      :namespace,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one range of days or times to exclude from use for training
    # an anomaly detection model.
    #
    # @note When making an API call, you may pass Range
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] start_time
    #   The start time of the range to exclude. The format is
    #   `yyyy-MM-dd'T'HH:mm:ss`. For example, `2019-07-01T23:59:59`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the range to exclude. The format is
    #   `yyyy-MM-dd'T'HH:mm:ss`. For example, `2019-07-01T23:59:59`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Range AWS API Documentation
    #
    class Range < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The named resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ResourceNotFound AWS API Documentation
    #
    class ResourceNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The named resource does not exist.
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetAlarmStateInput
    #   data as a hash:
    #
    #       {
    #         alarm_name: "AlarmName", # required
    #         state_value: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
    #         state_reason: "StateReason", # required
    #         state_reason_data: "StateReasonData",
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] state_value
    #   The value of the state.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that this alarm is set to this specific state, in text
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_data
    #   The reason that this alarm is set to this specific state, in JSON
    #   format.
    #
    #   For SNS or EC2 alarm actions, this is just informational. But for
    #   EC2 Auto Scaling or application Auto Scaling alarm actions, the Auto
    #   Scaling policy uses the information in this field to take the
    #   correct action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/SetAlarmStateInput AWS API Documentation
    #
    class SetAlarmStateInput < Struct.new(
      :alarm_name,
      :state_value,
      :state_reason,
      :state_reason_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a set of statistics that describes a specific metric.
    #
    # @note When making an API call, you may pass StatisticSet
    #   data as a hash:
    #
    #       {
    #         sample_count: 1.0, # required
    #         sum: 1.0, # required
    #         minimum: 1.0, # required
    #         maximum: 1.0, # required
    #       }
    #
    # @!attribute [rw] sample_count
    #   The number of samples used for the statistic set.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of values for the sample set.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum value of the sample set.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum value of the sample set.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/StatisticSet AWS API Documentation
    #
    class StatisticSet < Struct.new(
      :sample_count,
      :sum,
      :minimum,
      :maximum)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair associated with a CloudWatch resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   A string that you can use to assign a value. The combination of tag
    #   keys and values can help you organize and categorize your resources.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch resource that you're adding tags to.
    #
    #   The ARN format of an alarm is
    #   `arn:aws:cloudwatch:Region:account-id:alarm:alarm-name `
    #
    #   The ARN format of a Contributor Insights rule is
    #   `arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name
    #   `
    #
    #   For more information about ARN format, see [ Resource Types Defined
    #   by Amazon CloudWatch][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the alarm.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch resource that you're removing tags from.
    #
    #   The ARN format of an alarm is
    #   `arn:aws:cloudwatch:Region:account-id:alarm:alarm-name `
    #
    #   The ARN format of a Contributor Insights rule is
    #   `arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name
    #   `
    #
    #   For more information about ARN format, see [ Resource Types Defined
    #   by Amazon CloudWatch][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

  end
end
