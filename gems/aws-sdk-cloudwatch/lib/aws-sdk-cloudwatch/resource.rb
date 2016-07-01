# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CloudWatch
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

      # @param [Hash] options ({})
      # @option options [Array<String>] :alarm_names
      #   A list of alarm names to retrieve information for.
      # @option options [String] :alarm_name_prefix
      #   The alarm name prefix. `AlarmNames` cannot be specified if this
      #   parameter is specified.
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

      # @param [Hash] options ({})
      # @option options [String] :namespace
      #   The namespace to filter against.
      # @option options [String] :metric_name
      #   The name of the metric to filter against.
      # @option options [Array<Types::DimensionFilter>] :dimensions
      #   A list of dimensions to filter against.
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
end
