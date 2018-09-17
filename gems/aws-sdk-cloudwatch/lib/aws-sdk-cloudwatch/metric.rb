# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch
  class Metric

    extend Aws::Deprecations

    # @overload def initialize(namespace, name, options = {})
    #   @param [String] namespace
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :namespace
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @namespace = extract_namespace(args, options)
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def namespace
      @namespace
    end

    # @return [String]
    def name
      @name
    end
    alias :metric_name :name

    # The dimensions for the metric.
    # @return [Array<Types::Dimension>]
    def dimensions
      data[:dimensions]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Metric}.
    # Returns `self` making it possible to chain methods.
    #
    #     metric.reload.data
    #
    # @return [self]
    def load
      resp = @client.list_metrics(
        metric_name: @name,
        namespace: @namespace
      )
      @data = resp.metrics[0]
      self
    end
    alias :reload :load

    # @return [Types::Metric]
    #   Returns the data for this {Metric}. Calls
    #   {Client#list_metrics} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::CloudWatch::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   metric.get_statistics({
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
    # @param [Hash] options ({})
    # @option options [Array<Types::Dimension>] :dimensions
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
    # @option options [required, Time,DateTime,Date,Integer,String] :start_time
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
    # @option options [required, Time,DateTime,Date,Integer,String] :end_time
    #   The time stamp that determines the last data point to return.
    #
    #   The value specified is exclusive; results include data points up to
    #   the specified time stamp. The time stamp must be in ISO 8601 UTC
    #   format (for example, 2016-10-10T23:00:00Z).
    # @option options [required, Integer] :period
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
    # @option options [Array<String>] :statistics
    #   The metric statistics, other than percentile. For percentile
    #   statistics, use `ExtendedStatistics`. When calling
    #   `GetMetricStatistics`, you must specify either `Statistics` or
    #   `ExtendedStatistics`, but not both.
    # @option options [Array<String>] :extended_statistics
    #   The percentile statistics. Specify values between p0.0 and p100. When
    #   calling `GetMetricStatistics`, you must specify either `Statistics` or
    #   `ExtendedStatistics`, but not both. Percentile statistics are not
    #   available for metrics when any of the metric values are negative
    #   numbers.
    # @option options [String] :unit
    #   The unit for a given metric. Metrics may be reported in multiple
    #   units. Not supplying a unit results in all units being returned. If
    #   you specify only a unit that the metric does not report, the results
    #   of the call are null.
    # @return [Types::GetMetricStatisticsOutput]
    def get_statistics(options = {})
      options = options.merge(
        namespace: @namespace,
        metric_name: @name
      )
      resp = @client.get_metric_statistics(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   alarm = metric.put_alarm({
    #     alarm_name: "AlarmName", # required
    #     alarm_description: "AlarmDescription",
    #     actions_enabled: false,
    #     ok_actions: ["ResourceName"],
    #     alarm_actions: ["ResourceName"],
    #     insufficient_data_actions: ["ResourceName"],
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
    # @param [Hash] options ({})
    # @option options [required, String] :alarm_name
    #   The name for the alarm. This name must be unique within the AWS
    #   account.
    # @option options [String] :alarm_description
    #   The description for the alarm.
    # @option options [Boolean] :actions_enabled
    #   Indicates whether actions should be executed during any changes to the
    #   alarm state.
    # @option options [Array<String>] :ok_actions
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
    # @option options [Array<String>] :alarm_actions
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
    # @option options [Array<String>] :insufficient_data_actions
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
    # @option options [String] :statistic
    #   The statistic for the metric associated with the alarm, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`. When
    #   you call `PutMetricAlarm`, you must specify either `Statistic` or
    #   `ExtendedStatistic,` but not both.
    # @option options [String] :extended_statistic
    #   The percentile statistic for the metric associated with the alarm.
    #   Specify a value between p0.0 and p100. When you call `PutMetricAlarm`,
    #   you must specify either `Statistic` or `ExtendedStatistic,` but not
    #   both.
    # @option options [Array<Types::Dimension>] :dimensions
    #   The dimensions for the metric associated with the alarm.
    # @option options [required, Integer] :period
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
    # @option options [String] :unit
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
    # @option options [required, Integer] :evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold. If you are setting an alarm which requires that a number of
    #   consecutive data points be breaching to trigger the alarm, this value
    #   specifies that number. If you are setting an "M out of N" alarm,
    #   this value is the N.
    #
    #   An alarm's total current evaluation period can be no longer than one
    #   day, so this number multiplied by `Period` cannot be more than 86,400
    #   seconds.
    # @option options [Integer] :datapoints_to_alarm
    #   The number of datapoints that must be breaching to trigger the alarm.
    #   This is used only if you are setting an "M out of N" alarm. In that
    #   case, this value is the M. For more information, see [Evaluating an
    #   Alarm][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation
    # @option options [required, Float] :threshold
    #   The value against which the specified statistic is compared.
    # @option options [required, String] :comparison_operator
    #   The arithmetic operation to use when comparing the specified statistic
    #   and threshold. The specified statistic value is used as the first
    #   operand.
    # @option options [String] :treat_missing_data
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
    # @option options [String] :evaluate_low_sample_count_percentile
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
    # @return [Alarm]
    def put_alarm(options = {})
      options = options.merge(
        namespace: @namespace,
        metric_name: @name
      )
      resp = @client.put_metric_alarm(options)
      Alarm.new(
        name: options[:alarm_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   metric.put_data({
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
    # @param [Hash] options ({})
    # @option options [required, Array<Types::MetricDatum>] :metric_data
    #   The data for the metric. The array can include no more than 20 metrics
    #   per call.
    # @return [EmptyStructure]
    def put_data(options = {})
      options = Aws::Util.deep_merge(options,
        namespace: @namespace,
        metric_data: [{ metric_name: @name }]
      )
      resp = @client.put_metric_data(options)
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   alarms = metric.alarms({
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
    # @param [Hash] options ({})
    # @option options [String] :statistic
    #   The statistic for the metric, other than percentiles. For percentile
    #   statistics, use `ExtendedStatistics`.
    # @option options [String] :extended_statistic
    #   The percentile statistic for the metric. Specify a value between p0.0
    #   and p100.
    # @option options [Array<Types::Dimension>] :dimensions
    #   The dimensions associated with the metric. If the metric has any
    #   associated dimensions, you must specify them in order for the call to
    #   succeed.
    # @option options [Integer] :period
    #   The period, in seconds, over which the statistic is applied.
    # @option options [String] :unit
    #   The unit for the metric.
    # @return [Alarm::Collection]
    def alarms(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(
          namespace: @namespace,
          metric_name: @name
        )
        resp = @client.describe_alarms_for_metric(options)
        resp.data.metric_alarms.each do |m|
          batch << Alarm.new(
            name: m.alarm_name,
            data: m,
            client: @client
          )
        end
        y.yield(batch)
      end
      Alarm::Collection.new(batches)
    end

    # @deprecated
    # @api private
    def identifiers
      {
        namespace: @namespace,
        name: @name
      }
    end
    deprecated(:identifiers)

    private

    def extract_namespace(args, options)
      value = args[0] || options.delete(:namespace)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :namespace"
      else
        msg = "expected :namespace to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_name(args, options)
      value = args[1] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
