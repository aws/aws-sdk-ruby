# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudWatch
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
        data.dimensions
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
      #   The dimensions. CloudWatch treats each unique combination of
      #   dimensions as a separate metric. You can't retrieve statistics using
      #   combinations of dimensions that were not specially published. You must
      #   specify the same dimensions that were used when the metrics were
      #   created. For an example, see [Dimension Combinations][1] in the
      #   *Amazon CloudWatch User Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations
      # @option options [required, Time,DateTime,Date,Integer,String] :start_time
      #   The time stamp that determines the first data point to return. Note
      #   that start times are evaluated relative to the time that CloudWatch
      #   receives the request.
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
      # @option options [required, Time,DateTime,Date,Integer,String] :end_time
      #   The time stamp that determines the last data point to return.
      #
      #   The value specified is exclusive; results will include data points up
      #   to the specified time stamp. The time stamp must be in ISO 8601 UTC
      #   format (for example, 2016-10-10T23:00:00Z).
      # @option options [required, Integer] :period
      #   The granularity, in seconds, of the returned data points. A period can
      #   be as short as one minute (60 seconds) and must be a multiple of 60.
      #   The default value is 60.
      #
      #   If the `StartTime` parameter specifies a time stamp that is greater
      #   than 15 days ago, you must specify the period as follows or no data
      #   points in that time range is returned:
      #
      #   * Start time between 15 and 63 days ago - Use a multiple of 300
      #     seconds (5 minutes).
      #
      #   * Start time greater than 63 days ago - Use a multiple of 3600 seconds
      #     (1 hour).
      # @option options [Array<String>] :statistics
      #   The metric statistics, other than percentile. For percentile
      #   statistics, use `ExtendedStatistic`.
      # @option options [Array<String>] :extended_statistics
      #   The percentile statistics. Specify values between p0.0 and p100.
      # @option options [String] :unit
      #   The unit for a given metric. Metrics may be reported in multiple
      #   units. Not supplying a unit results in all units being returned. If
      #   the metric only ever reports one unit, specifying a unit has no
      #   effect.
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
      #     threshold: 1.0, # required
      #     comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
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
      #   Valid Values: arn:aws:automate:*region*\:ec2:stop \|
      #   arn:aws:automate:*region*\:ec2:terminate \|
      #   arn:aws:automate:*region*\:ec2:recover
      #
      #   Valid Values (for use with IAM roles):
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
      # @option options [Array<String>] :alarm_actions
      #   The actions to execute when this alarm transitions to the `ALARM`
      #   state from any other state. Each action is specified as an Amazon
      #   Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region*\:ec2:stop \|
      #   arn:aws:automate:*region*\:ec2:terminate \|
      #   arn:aws:automate:*region*\:ec2:recover
      #
      #   Valid Values (for use with IAM roles):
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
      # @option options [Array<String>] :insufficient_data_actions
      #   The actions to execute when this alarm transitions to the
      #   `INSUFFICIENT_DATA` state from any other state. Each action is
      #   specified as an Amazon Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region*\:ec2:stop \|
      #   arn:aws:automate:*region*\:ec2:terminate \|
      #   arn:aws:automate:*region*\:ec2:recover
      #
      #   Valid Values (for use with IAM roles):
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
      # @option options [String] :statistic
      #   The statistic for the metric associated with the alarm, other than
      #   percentile. For percentile statistics, use `ExtendedStatistic`.
      # @option options [String] :extended_statistic
      #   The percentile statistic for the metric associated with the alarm.
      #   Specify a value between p0.0 and p100.
      # @option options [Array<Types::Dimension>] :dimensions
      #   The dimensions for the metric associated with the alarm.
      # @option options [required, Integer] :period
      #   The period, in seconds, over which the specified statistic is applied.
      # @option options [String] :unit
      #   The unit of measure for the statistic. For example, the units for the
      #   Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
      #   number of bytes that an instance receives on all network interfaces.
      #   You can also specify a unit when you create a custom metric. Units
      #   help provide conceptual meaning to your data. Metric data points that
      #   specify a unit of measure, such as Percent, are aggregated separately.
      #
      #   If you specify a unit, you must use a unit that is appropriate for the
      #   metric. Otherwise, the Amazon CloudWatch alarm can get stuck in the
      #   `INSUFFICIENT DATA` state.
      # @option options [required, Integer] :evaluation_periods
      #   The number of periods over which data is compared to the specified
      #   threshold.
      # @option options [required, Float] :threshold
      #   The value against which the specified statistic is compared.
      # @option options [required, String] :comparison_operator
      #   The arithmetic operation to use when comparing the specified statistic
      #   and threshold. The specified statistic value is used as the first
      #   operand.
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
      #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #       },
      #     ],
      #   })
      # @param [Hash] options ({})
      # @option options [required, Array<Types::MetricDatum>] :metric_data
      #   The data for the metric.
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
end
