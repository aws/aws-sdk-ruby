# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch
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
    #     state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
    #     action_prefix: "ActionPrefix",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :alarm_names
    #   The names of the alarms.
    # @option options [String] :alarm_name_prefix
    #   The alarm name prefix. If this parameter is specified, you cannot
    #   specify `AlarmNames`.
    # @option options [String] :state_value
    #   The state value to be used in matching alarms.
    # @option options [String] :action_prefix
    #   The action name prefix.
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
    #   })
    # @param [Hash] options ({})
    # @option options [String] :namespace
    #   The namespace to filter against.
    # @option options [String] :metric_name
    #   The name of the metric to filter against.
    # @option options [Array<Types::DimensionFilter>] :dimensions
    #   The dimensions to filter against.
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
