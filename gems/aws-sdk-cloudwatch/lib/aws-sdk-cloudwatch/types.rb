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
      :timestamp,
      :history_item_type,
      :history_summary,
      :history_data)
      include Aws::Structure
    end

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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteDashboardsOutput AWS API Documentation
    #
    class DeleteDashboardsOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAlarmHistoryInput
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
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmHistoryInput AWS API Documentation
    #
    class DescribeAlarmHistoryInput < Struct.new(
      :alarm_name,
      :history_item_type,
      :start_date,
      :end_date,
      :max_records,
      :next_token)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlarmsInput
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
    #
    # @!attribute [rw] alarm_names
    #   The names of the alarms.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_name_prefix
    #   The alarm name prefix. If this parameter is specified, you cannot
    #   specify `AlarmNames`.
    #   @return [String]
    #
    # @!attribute [rw] state_value
    #   The state value to be used in matching alarms.
    #   @return [String]
    #
    # @!attribute [rw] action_prefix
    #   The action name prefix.
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
      :state_value,
      :action_prefix,
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] metric_alarms
    #   The information for the specified alarms.
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
      :metric_alarms,
      :next_token)
      include Aws::Structure
    end

    # Expands the identity of a metric.
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
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value representing the dimension measurement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :name,
      :value)
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
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_body
    #   The detailed information about the dashboard, including what widgets
    #   are included and their location on the dashboard. For more
    #   information about the `DashboardBody` syntax, see
    #   CloudWatch-Dashboard-Body-Structure.
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
    #   include as many as 100 `MetricDataQuery` structures. Each of these
    #   structures can specify either a metric to retrieve, or a math
    #   expression to perform on retrieved data.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @!attribute [rw] start_time
    #   The time stamp indicating the earliest data to be returned.
    #
    #   For better performance, specify `StartTime` and `EndTime` values
    #   that align with the value of the metric's `Period` and sync up with
    #   the beginning and end of an hour. For example, if the `Period` of a
    #   metric is 5 minutes, specifying 12:05 or 12:30 as `StartTime` can
    #   get a faster response from CloudWatch then setting 12:07 or 12:29 as
    #   the `StartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time stamp indicating the latest data to be returned.
    #
    #   For better performance, specify `StartTime` and `EndTime` values
    #   that align with the value of the metric's `Period` and sync up with
    #   the beginning and end of an hour. For example, if the `Period` of a
    #   metric is 5 minutes, specifying 12:05 or 12:30 as `EndTime` can get
    #   a faster response from CloudWatch then setting 12:07 or 12:29 as the
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricDataOutput AWS API Documentation
    #
    class GetMetricDataOutput < Struct.new(
      :metric_data_results,
      :next_token)
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations
    #   [2]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] start_time
    #   The time stamp that determines the first data point to return. Start
    #   times are evaluated relative to the time that CloudWatch receives
    #   the request.
    #
    #   The value specified is inclusive; results include data points with
    #   the specified time stamp. The time stamp must be in ISO 8601 UTC
    #   format (for example, 2016-10-03T23:00:00Z).
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
    #   the specified time stamp. The time stamp must be in ISO 8601 UTC
    #   format (for example, 2016-10-10T23:00:00Z).
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
    #   The unit for a given metric. Metrics may be reported in multiple
    #   units. Not supplying a unit results in all units being returned. If
    #   you specify only a unit that the metric does not report, the results
    #   of the call are null.
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
    #   CloudWatch-Metric-Widget-Structure.
    #
    #   If any metric on the graph could not load all the requested data
    #   points, an orange triangle with an exclamation point appears next to
    #   the graph legend.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The format of the resulting image. Only PNG images are supported.
    #
    #   The default is `png`. If you specify `png`, the API returns an HTTP
    #   response with the content-type set to `text/xml`. The image data is
    #   in a `MetricWidgetImage` field. For example:
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
      include Aws::Structure
    end

    # @!attribute [rw] metric_widget_image
    #   The image of the graph, in the output format specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricWidgetImageOutput AWS API Documentation
    #
    class GetMetricWidgetImageOutput < Struct.new(
      :metric_widget_image)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListMetricsInput AWS API Documentation
    #
    class ListMetricsInput < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   The metrics.
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
    #   The name of the metric.
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
      include Aws::Structure
    end

    # Represents an alarm.
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
    #   The name of the metric associated with the alarm.
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
    #   The number of datapoints that must be breaching to trigger the
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
      :evaluate_low_sample_count_percentile)
      include Aws::Structure
    end

    # This structure indicates the metric data to return, and whether this
    # call is just retrieving a batch set of data for one metric, or is
    # performing a math expression on metric data. A single `GetMetricData`
    # call can include up to 100 `MetricDataQuery` structures.
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
    #       }
    #
    # @!attribute [rw] id
    #   A short name used to tie this structure to the results in the
    #   response. This name must be unique within a single call to
    #   `GetMetricData`. If you are performing math expressions on this set
    #   of data, this name represents that data and can serve as a variable
    #   in the mathematical expression. The valid characters are letters,
    #   numbers, and underscore. The first character must be a lowercase
    #   letter.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   The metric to be returned, along with statistics, period, and units.
    #   Use this parameter only if this structure is performing a data
    #   retrieval and not performing a math expression on the returned data.
    #
    #   Within one MetricDataQuery structure, you must specify either
    #   `Expression` or `MetricStat` but not both.
    #   @return [Types::MetricStat]
    #
    # @!attribute [rw] expression
    #   The math expression to be performed on the returned data, if this
    #   structure is performing a math expression. For more information
    #   about metric math expressions, see [Metric Math Syntax and
    #   Functions][1] in the *Amazon CloudWatch User Guide*.
    #
    #   Within one MetricDataQuery structure, you must specify either
    #   `Expression` or `MetricStat` but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax
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
    #   Indicates whether to return the time stamps and raw data values of
    #   this metric. If you are performing this call just to do math
    #   expressions and do not also need the raw data returned, you can
    #   specify `False`. If you omit this, the default of `True` is used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricDataQuery AWS API Documentation
    #
    class MetricDataQuery < Struct.new(
      :id,
      :metric_stat,
      :expression,
      :label,
      :return_data)
      include Aws::Structure
    end

    # A `GetMetricData` call returns an array of `MetricDataResult`
    # structures. Each of these structures includes the data points for that
    # metric, along with the time stamps of those data points and other
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
    #   The time stamps for the data points, formatted in Unix timestamp
    #   format. The number of time stamps always matches the number of
    #   values and the value for Timestamps\[x\] is Values\[x\].
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The data points for the metric corresponding to `Timestamps`. The
    #   number of values always matches the number of time stamps and the
    #   time stamp for Values\[x\] is Timestamps\[x\].
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
    #   be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or
    #   2e-360 to 2e360 (Base 2). In addition, special values (for example,
    #   NaN, +Infinity, -Infinity) are not supported.
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
    #   Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base
    #   10) or 2e-360 to 2e360 (Base 2). In addition, special values (for
    #   example, NaN, +Infinity, -Infinity) are not supported.
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
    #   The unit of the metric.
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#high-resolution-metrics
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
    #   The period to use when retrieving the metric.
    #   @return [Integer]
    #
    # @!attribute [rw] stat
    #   The statistic to return. It can include any CloudWatch statistic or
    #   extended statistic.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit to use for the returned data points.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricStat AWS API Documentation
    #
    class MetricStat < Struct.new(
      :metric,
      :period,
      :stat,
      :unit)
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
    #   For more information about the syntax, see
    #   CloudWatch-Dashboard-Body-Structure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutDashboardInput AWS API Documentation
    #
    class PutDashboardInput < Struct.new(
      :dashboard_name,
      :dashboard_body)
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_validation_messages
    #   If the input for `PutDashboard` was correct and the dashboard was
    #   successfully created or modified, this result is empty.
    #
    #   If this result includes only warning messages, then the input was
    #   valid enough for the dashboard to be created or modified, but some
    #   elements of the dashboard may not render.
    #
    #   If this result includes error messages, the input was not valid and
    #   the operation failed.
    #   @return [Array<Types::DashboardValidationMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutDashboardOutput AWS API Documentation
    #
    class PutDashboardOutput < Struct.new(
      :dashboard_validation_messages)
      include Aws::Structure
    end

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
    #         period: 1, # required
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         evaluation_periods: 1, # required
    #         datapoints_to_alarm: 1,
    #         threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #         treat_missing_data: "TreatMissingData",
    #         evaluate_low_sample_count_percentile: "EvaluateLowSampleCountPercentile",
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name for the alarm. This name must be unique within the AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] alarm_description
    #   The description for the alarm.
    #   @return [String]
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state.
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_name
    #   The name for the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace for the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric associated with the alarm, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`. When
    #   you call `PutMetricAlarm`, you must specify either `Statistic` or
    #   `ExtendedStatistic,` but not both.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric associated with the alarm.
    #   Specify a value between p0.0 and p100. When you call
    #   `PutMetricAlarm`, you must specify either `Statistic` or
    #   `ExtendedStatistic,` but not both.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric associated with the alarm.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the specified statistic is
    #   applied. Valid values are 10, 30, and any multiple of 60.
    #
    #   Be sure to specify 10 or 30 only for metrics that are stored by a
    #   `PutMetricData` call with a `StorageResolution` of 1. If you specify
    #   a period of 10 or 30 for a metric that does not have sub-minute
    #   resolution, the alarm still attempts to gather data at the period
    #   rate that you specify. In this case, it does not receive data for
    #   the attempts that do not correspond to a one-minute data resolution,
    #   and the alarm may often lapse into INSUFFICENT\_DATA status.
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
    #   If you specify a unit, you must use a unit that is appropriate for
    #   the metric. Otherwise, the CloudWatch alarm can get stuck in the
    #   `INSUFFICIENT DATA` state.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold. If you are setting an alarm which requires that a number
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
    #   The number of datapoints that must be breaching to trigger the
    #   alarm. This is used only if you are setting an "M out of N" alarm.
    #   In that case, this value is the M. For more information, see
    #   [Evaluating an Alarm][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic and threshold. The specified statistic value is used as
    #   the first operand.
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data
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
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples
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
      :evaluate_low_sample_count_percentile)
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
    #   You cannot specify a namespace that begins with "AWS/". Namespaces
    #   that begin with "AWS/" are reserved for use by Amazon Web Services
    #   products.
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
    #   The name for the alarm. This name must be unique within the AWS
    #   account. The maximum length is 255 characters.
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/SetAlarmStateInput AWS API Documentation
    #
    class SetAlarmStateInput < Struct.new(
      :alarm_name,
      :state_value,
      :state_reason,
      :state_reason_data)
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
      include Aws::Structure
    end

  end
end
