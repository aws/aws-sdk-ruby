# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
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

      # A list of dimensions associated with the metric.
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

      # @param [Hash] options ({})
      # @option options [Array<Types::Dimension>] :dimensions
      #   A list of dimensions describing qualities of the metric.
      # @option options [required, Time,DateTime,Date,Integer,String] :start_time
      #   The time stamp to use for determining the first datapoint to return.
      #   The value specified is inclusive; results include datapoints with the
      #   time stamp specified. The time stamp must be in ISO 8601 UTC format
      #   (e.g., 2014-09-03T23:00:00Z).
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
      # @option options [required, Time,DateTime,Date,Integer,String] :end_time
      #   The time stamp to use for determining the last datapoint to return.
      #   The value specified is exclusive; results will include datapoints up
      #   to the time stamp specified. The time stamp must be in ISO 8601 UTC
      #   format (e.g., 2014-09-03T23:00:00Z).
      # @option options [required, Integer] :period
      #   The granularity, in seconds, of the returned datapoints. A `Period`
      #   can be as short as one minute (60 seconds) or as long as one day
      #   (86,400 seconds), and must be a multiple of 60. The default value is
      #   60.
      # @option options [required, Array<String>] :statistics
      #   The metric statistics to return. For information about specific
      #   statistics returned by GetMetricStatistics, see [Statistics][1] in the
      #   *Amazon CloudWatch Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Statistic
      # @option options [String] :unit
      #   The specific unit for a given metric. Metrics may be reported in
      #   multiple units. Not supplying a unit results in all units being
      #   returned. If the metric only ever reports one unit, specifying a unit
      #   will have no effect.
      # @return [Types::GetMetricStatisticsOutput]
      def get_statistics(options = {})
        options = options.merge(
          namespace: @namespace,
          metric_name: @name
        )
        resp = @client.get_metric_statistics(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :alarm_name
      #   The descriptive name for the alarm. This name must be unique within
      #   the user\'s AWS account
      # @option options [String] :alarm_description
      #   The description for the alarm.
      # @option options [Boolean] :actions_enabled
      #   Indicates whether or not actions should be executed during any changes
      #   to the alarm\'s state.
      # @option options [Array<String>] :ok_actions
      #   The list of actions to execute when this alarm transitions into an
      #   `OK` state from any other state. Each action is specified as an Amazon
      #   Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
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
      #   **EC2ActionsAccess** IAM role for the first time. After this IAM role
      #   is created, you can create stop, terminate, or reboot alarms using the
      #   CLI.
      # @option options [Array<String>] :alarm_actions
      #   The list of actions to execute when this alarm transitions into an
      #   `ALARM` state from any other state. Each action is specified as an
      #   Amazon Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
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
      #   **EC2ActionsAccess** IAM role for the first time. After this IAM role
      #   is created, you can create stop, terminate, or reboot alarms using the
      #   CLI.
      # @option options [Array<String>] :insufficient_data_actions
      #   The list of actions to execute when this alarm transitions into an
      #   `INSUFFICIENT_DATA` state from any other state. Each action is
      #   specified as an Amazon Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
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
      #   **EC2ActionsAccess** IAM role for the first time. After this IAM role
      #   is created, you can create stop, terminate, or reboot alarms using the
      #   CLI.
      # @option options [required, String] :statistic
      #   The statistic to apply to the alarm\'s associated metric.
      # @option options [Array<Types::Dimension>] :dimensions
      #   The dimensions for the alarm\'s associated metric.
      # @option options [required, Integer] :period
      #   The period in seconds over which the specified statistic is applied.
      # @option options [String] :unit
      #   The statistic\'s unit of measure. For example, the units for the
      #   Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
      #   number of bytes that an instance receives on all network interfaces.
      #   You can also specify a unit when you create a custom metric. Units
      #   help provide conceptual meaning to your data. Metric data points that
      #   specify a unit of measure, such as Percent, are aggregated separately.
      #
      #   **Note:** If you specify a unit, you must use a unit that is
      #   appropriate for the metric. Otherwise, this can cause an Amazon
      #   CloudWatch alarm to get stuck in the INSUFFICIENT DATA state.
      # @option options [required, Integer] :evaluation_periods
      #   The number of periods over which data is compared to the specified
      #   threshold.
      # @option options [required, Float] :threshold
      #   The value against which the specified statistic is compared.
      # @option options [required, String] :comparison_operator
      #   The arithmetic operation to use when comparing the specified
      #   `Statistic` and `Threshold`. The specified `Statistic` value is used
      #   as the first operand.
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

      # @param [Hash] options ({})
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

      # @param [Hash] options ({})
      # @option options [String] :statistic
      #   The statistic for the metric.
      # @option options [Array<Types::Dimension>] :dimensions
      #   The list of dimensions associated with the metric. If the metric has
      #   any associated dimensions, you must specify them in order for the
      #   DescribeAlarmsForMetric to succeed.
      # @option options [Integer] :period
      #   The period in seconds over which the statistic is applied.
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

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<Metric>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
