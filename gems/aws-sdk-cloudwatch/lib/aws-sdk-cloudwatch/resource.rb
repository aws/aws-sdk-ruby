# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch

  # This class provides a resource oriented interface for CloudWatch.
  # To create a resource object:
  #
  #     resource = Aws::CloudWatch::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::CloudWatch::Client.new(region: 'us-west-2')
  #     resource = Aws::CloudWatch::Resource.new(client: client)
  #
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Associations

    # @param [String] name
    # @return [Alarm]
    def alarm(name)
      Alarm.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   alarms = cloud_watch.alarms({
    #     alarm_names: ["AlarmName"],
    #     alarm_name_prefix: "AlarmNamePrefix",
    #     alarm_types: ["CompositeAlarm"], # accepts CompositeAlarm, MetricAlarm
    #     children_of_alarm_name: "AlarmName",
    #     parents_of_alarm_name: "AlarmName",
    #     state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
    #     action_prefix: "ActionPrefix",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :alarm_names
    #   The names of the alarms to retrieve information about.
    # @option options [String] :alarm_name_prefix
    #   An alarm name prefix. If you specify this parameter, you receive
    #   information about all alarms that have names that start with this
    #   prefix.
    #
    #   If this parameter is specified, you cannot specify `AlarmNames`.
    # @option options [Array<String>] :alarm_types
    #   Use this parameter to specify whether you want the operation to return
    #   metric alarms or composite alarms. If you omit this parameter, only
    #   metric alarms are returned.
    # @option options [String] :children_of_alarm_name
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
    # @option options [String] :parents_of_alarm_name
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
    # @option options [String] :state_value
    #   Specify this parameter to receive information only about alarms that
    #   are currently in the state that you specify.
    # @option options [String] :action_prefix
    #   Use this parameter to filter the results of the operation to only
    #   those alarms that use a certain alarm action. For example, you could
    #   specify the ARN of an SNS topic to find all alarms that send
    #   notifications to that topic.
    # @return [Alarm::Collection]
    def alarms(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_alarms(options)
        resp.each_page do |page|
          batch = []
          page.data.metric_alarms.each do |m|
            batch << Alarm.new(
              name: m.alarm_name,
              data: m,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Alarm::Collection.new(batches)
    end

    # @param [String] name
    # @return [CompositeAlarm]
    def composite_alarm(name)
      CompositeAlarm.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   composite_alarms = cloud_watch.composite_alarms({
    #     alarm_names: ["AlarmName"],
    #     alarm_name_prefix: "AlarmNamePrefix",
    #     alarm_types: ["CompositeAlarm"], # accepts CompositeAlarm, MetricAlarm
    #     children_of_alarm_name: "AlarmName",
    #     parents_of_alarm_name: "AlarmName",
    #     state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
    #     action_prefix: "ActionPrefix",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :alarm_names
    #   The names of the alarms to retrieve information about.
    # @option options [String] :alarm_name_prefix
    #   An alarm name prefix. If you specify this parameter, you receive
    #   information about all alarms that have names that start with this
    #   prefix.
    #
    #   If this parameter is specified, you cannot specify `AlarmNames`.
    # @option options [Array<String>] :alarm_types
    #   Use this parameter to specify whether you want the operation to return
    #   metric alarms or composite alarms. If you omit this parameter, only
    #   metric alarms are returned.
    # @option options [String] :children_of_alarm_name
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
    # @option options [String] :parents_of_alarm_name
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
    # @option options [String] :state_value
    #   Specify this parameter to receive information only about alarms that
    #   are currently in the state that you specify.
    # @option options [String] :action_prefix
    #   Use this parameter to filter the results of the operation to only
    #   those alarms that use a certain alarm action. For example, you could
    #   specify the ARN of an SNS topic to find all alarms that send
    #   notifications to that topic.
    # @return [CompositeAlarm::Collection]
    def composite_alarms(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_alarms(options)
        resp.each_page do |page|
          batch = []
          page.data.composite_alarms.each do |c|
            batch << CompositeAlarm.new(
              name: c.alarm_name,
              data: c,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      CompositeAlarm::Collection.new(batches)
    end

    # @param [String] namespace
    # @param [String] name
    # @return [Metric]
    def metric(namespace, name)
      Metric.new(
        namespace: namespace,
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   metrics = cloud_watch.metrics({
    #     namespace: "Namespace",
    #     metric_name: "MetricName",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue",
    #       },
    #     ],
    #     recently_active: "PT3H", # accepts PT3H
    #   })
    # @param [Hash] options ({})
    # @option options [String] :namespace
    #   The namespace to filter against.
    # @option options [String] :metric_name
    #   The name of the metric to filter against.
    # @option options [Array<Types::DimensionFilter>] :dimensions
    #   The dimensions to filter against.
    # @option options [String] :recently_active
    #   To filter the results to show only metrics that have had data points
    #   published in the past three hours, specify this parameter with a value
    #   of `PT3H`. This is the only valid value for this parameter.
    #
    #   The results that are returned are an approximation of the value you
    #   specify. There is a low probability that the returned results include
    #   metrics with last published data as much as 40 minutes more than the
    #   specified time interval.
    # @return [Metric::Collection]
    def metrics(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_metrics(options)
        resp.each_page do |page|
          batch = []
          page.data.metrics.each do |m|
            batch << Metric.new(
              namespace: m.namespace,
              name: m.metric_name,
              data: m,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Metric::Collection.new(batches)
    end

  end
end
