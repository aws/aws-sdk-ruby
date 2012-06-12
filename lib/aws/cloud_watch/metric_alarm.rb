# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#.kkk:w

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

    # @attr_reader [String] name
    #
    # @attr_reader [Boolean] enabled?
    #
    # @attr_reader [Array<String>] actions
    #
    # @attr_reader [String] arn
    #
    # @attr_reader [Time] configuration_updated_timestamp
    #
    # @attr_reader [String] description
    #
    # @attr_reader [String] comparison_operator
    #
    # @attr_reader [Array<Hash>] dimensions
    #
    # @attr_reader [Integer] evaluation_periods
    #
    # @attr_reader [Array<Hash>] insufficient_data_actions
    #
    # @attr_reader [String] metric_name
    #
    # @attr_reader [String] namespace
    #
    # @attr_reader [Array<Hash>] ok_actions
    #
    # @attr_reader [Integer] period
    #
    # @attr_reader [String] state_reason
    #
    # @attr_reader [String] state_reason_data
    #
    # @attr_reader [Time] state_updated_timestamp
    #
    # @attr_reader [String] state_value
    #
    # @attr_reader [Double] threshold
    #
    # @attr_reader [String] unit
    #
    class MetricAlarm < Core::Resource

      # @private
      def initialize alarm_name, options = {}
        @alarm_name = alarm_name
        super
      end

      attr_reader :alarm_name

      alias_method :name, :alarm_name

      attribute :actions_enabled, :static => true

      alias_method :enabled?, :actions_enabled

      attribute :alarm_actions, :static => true

      alias_method :actions, :alarm_actions

      attribute :alarm_arn, :static => true

      alias_method :arn, :alarm_arn

      attribute :alarm_configuration_updated_timestamp, :static => true

      alias_method :configuration_updated_timestamp, :alarm_configuration_updated_timestamp

      attribute :alarm_description, :static => true

      alias_method :description, :alarm_description

      attribute :comparison_operator, :static => true

      attribute :dimensions, :static => true

      attribute :evaluation_periods, :static => true

      attribute :insufficient_data_actions, :static => true

      attribute :metric_name, :static => true

      attribute :namespace, :static => true

      attribute :ok_actions, :static => true

      attribute :period, :static => true

      attribute :state_reason, :static => true

      attribute :state_reason_data, :static => true

      attribute :state_updated_timestamp, :static => true

      attribute :state_value, :static => true

      attribute :statistic, :static => true

      attribute :threshold, :static => true

      attribute :unit, :static => true

      populates_from :describe_alarms do |resp|
        resp.metric_alarms.find {|a| a.alarm_name == alarm_name }
      end

      populates_from :describe_alarms_for_metric do |resp|
        resp.metric_alarms.find {|a| a.alarm_name == alarm_name }
      end

      # Deletes the current alarm.
      # @return [nil]
      def delete
        client.delete_alarms(:alarm_names => [ alarm_name ])
        nil
      end

      # Disable the current alarm actions.
      # @return [nil]
      def disable
        client.disable_alarm_actions(:alarm_names => [ alarm_name ])
        nil
      end

      # Enable the current alarm actions.
      # @return [nil]
      def enable
        client.enable_alarm_actions(:alarm_names => [ alarm_name ])
        nil
      end

      # @return [Boolean] Returns true if this alarm exists.
      def exists?
        !!get_resource.metric_alarms.first
      end

      # Returns the history for current alarm.
      # @return [AlarmHistoryItemCollection]
      def histories options = {}
        AlarmHistoryItemCollection.new(options.merge(:alarm_name => alarm_name))
      end

      alias_method :history, :histories

      # Temporarily sets the state of current alarm.
      # @return [nil]
      def set_state(reason, value, options={})
        client.set_alarm_state(options.merge(:alarm_name => alarm_name, :state_reason => reason, :state_value => value))
        nil
      end

      protected
      def resource_identifiers
        [[:alarm_name, alarm_name]]
      end
      def get_resource attr_name = nil
        client.describe_alarms(:alarm_names => [ alarm_name ])
      end
    end
  end
end
