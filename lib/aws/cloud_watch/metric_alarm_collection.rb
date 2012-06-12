# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    #
    # @attr_reader [Metric] metric
    #
    class MetricAlarmCollection

      include Core::Collection::Limitable

      # @private
      def initialize options = {}
        @metric = options[:metric]
        @options = options
        super
      end

      attr_reader :metric

      # @param [String] alarm_name
      # @return [MetricAlarm]
      def [] alarm_name
        MetricAlarm.new(alarm_name, :config => config)
      end

      # @return [MetricAlarm]
      def create alarm_name, options = {}
        raise ArgumentError, 'missing required option :comparison_operator' unless options.include?(:comparison_operator)
        raise ArgumentError, 'missing required option :evaluation_periods' unless options.include?(:evaluation_periods)
        raise ArgumentError, 'missing required option :metric_name' unless options.include?(:metric_name)
        raise ArgumentError, 'missing required option :namespace' unless options.include?(:namespace)
        raise ArgumentError, 'missing required option :period' unless options.include?(:period)
        raise ArgumentError, 'missing required option :statistic' unless options.include?(:statistic)
        raise ArgumentError, 'missing required option :threshold' unless options.include?(:threshold)

        client.put_metric_alarm(options.merge(:alarm_name => alarm_name))
        self[alarm_name]
      end

      protected
      def _each_item next_token, limit, options = {}, &block
        if metric
          method_name = :describe_alarms_for_metric
          options[:namespace] = metric.namespace
          options[:metric_name] = metric.metric_name
          dimensions = metric.dimensions
          if dimensions and not dimensions.empty?
            options[:dimensions] = dimensions.to_a.map { |d| d.is_a?(Hash) ? d : d.to_hash }
          end
          options[:period] = @options[:period] if @options.include?(:period)
          options[:statistic] = @options[:statistic] if @options.include?(:statistic)
          options[:unit] = @options[:unit] if @options.include?(:unit)
        else
          method_name = :describe_alarms
          options[:action_prefix] = @options[:action_prefix] if @options.include?(:action_prefix)
          options[:alarm_name_prefix] = @options[:alarm_name_prefix] if @options.include?(:alarm_name_prefix)
          options[:alarm_names] = @options[:alarm_names] if @options.include?(:alarm_names)
          options[:state_value] = @options[:state_value] if @options.include?(:state_value)
        end

        options[:max_records] = limit if limit
        options[:next_token] = next_token if next_token
        resp = client.__send__(method_name, options)
        resp.metric_alarms.each do |details|
          next unless details.respond_to?(:alarm_name) # FIXME: don't generate empty responses from parser
          alarm = MetricAlarm.new_from(
            method_name, details, 
            details.alarm_name, :config => config)
          yield(alarm)
        end
        resp.data[:next_token]
      end

    end
  end
end
