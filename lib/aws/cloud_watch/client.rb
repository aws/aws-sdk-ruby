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

    # Client class for Cloud Watch
    class Client < Core::Client

      API_VERSION = '2010-08-01'

      extend Core::Client::QueryXML

      # @private
      CACHEABLE_REQUESTS = Set[
        :describe_alarm_history,
        :describe_alarms,
        :describe_alarms_for_metric,
        :list_metrics,
      ]

      ## client methods ##

      # Calls the DeleteAlarms API operation.
      # @method delete_alarms(options = {})
      #
      # === Options:
      #
      # * +:alarm_names+ - *required* - (Array<String>)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_alarms, 'DeleteAlarms'

      # Calls the DescribeAlarmHistory API operation.
      # @method describe_alarm_history(options = {})
      #
      # === Options:
      #
      # * +:alarm_name+ - - (String)
      # * +:end_date+ - - (Time)
      # * +:history_item_type+ - - (String)
      # * +:max_records+ - - (Integer)
      # * +:next_token+ - - (String)
      # * +:start_date+ - - (Time)
      #
      # === Response Structure:
      #
      # * +:alarm_history_items+ - (Array<Hash>)
      #   * +:alarm_name+ - (String)
      #   * +:history_data+ - (String)
      #   * +:history_item_type+ - (String)
      #   * +:history_summary+ - (String)
      #   * +:timestamp+ - (Time)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_alarm_history, 'DescribeAlarmHistory'

      # Calls the DescribeAlarms API operation.
      # @method describe_alarms(options = {})
      #
      # === Options:
      #
      # * +:action_prefix+ - - (String)
      # * +:alarm_name_prefix+ - - (String)
      # * +:alarm_names+ - - (Array<String>)
      # * +:max_records+ - - (Integer)
      # * +:next_token+ - - (String)
      # * +:state_value+ - - (String)
      #
      # === Response Structure:
      #
      # * +:metric_alarms+ - (Array<Hash>)
      #   * +:actions_enabled+ - (Boolean)
      #   * +:alarm_actions+ - (Array<String>)
      #   * +:alarm_arn+ - (String)
      #   * +:alarm_configuration_updated_timestamp+ - (Time)
      #   * +:alarm_description+ - (String)
      #   * +:alarm_name+ - (String)
      #   * +:comparison_operator+ - (String)
      #   * +:dimensions+ - (Array<Hash>)
      #   * +:evaluation_periods+ - (Integer)
      #   * +:insufficient_data_actions+ - (Array<String>)
      #   * +:metric_name+ - (String)
      #   * +:namespace+ - (String)
      #   * +:ok_actions+ - (Array<String>)
      #   * +:period+ - (Integer)
      #   * +:state_reason+ - (String)
      #   * +:state_reason_data+ - (String)
      #   * +:state_updated_timestamp+ - (Time)
      #   * +:state_value+ - (String)
      #   * +:statistic+ - (String)
      #   * +:threshold+ - (Float)
      #   * +:unit+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_alarms, 'DescribeAlarms'

      # Calls the DescribeAlarmsForMetric API operation.
      # @method describe_alarms_for_metric(options = {})
      #
      # === Options:
      #
      # * +:dimensions+ - - (Array<Hash>)
      # * +:metric_name+ - *required* - (String)
      # * +:namespace+ - *required* - (String)
      # * +:period+ - - (Integer)
      # * +:statistic+ - - (String)
      # * +:unit+ - - (String)
      #
      # === Response Structure:
      #
      # * +:metric_alarms+ - (Array<Hash>)
      #   * +:actions_enabled+ - (Boolean)
      #   * +:alarm_actions+ - (Array<String>)
      #   * +:alarm_arn+ - (String)
      #   * +:alarm_configuration_updated_timestamp+ - (Time)
      #   * +:alarm_description+ - (String)
      #   * +:alarm_name+ - (String)
      #   * +:comparison_operator+ - (String)
      #   * +:dimensions+ - (Array<Hash>)
      #   * +:evaluation_periods+ - (Integer)
      #   * +:insufficient_data_actions+ - (Array<String>)
      #   * +:metric_name+ - (String)
      #   * +:namespace+ - (String)
      #   * +:ok_actions+ - (Array<String>)
      #   * +:period+ - (Integer)
      #   * +:state_reason+ - (String)
      #   * +:state_reason_data+ - (String)
      #   * +:state_updated_timestamp+ - (Time)
      #   * +:state_value+ - (String)
      #   * +:statistic+ - (String)
      #   * +:threshold+ - (Float)
      #   * +:unit+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_alarms_for_metric, 'DescribeAlarmsForMetric'

      # Calls the DisableAlarmActions API operation.
      # @method disable_alarm_actions(options = {})
      #
      # === Options:
      #
      # * +:alarm_names+ - *required* - (Array<String>)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :disable_alarm_actions, 'DisableAlarmActions'

      # Calls the EnableAlarmActions API operation.
      # @method enable_alarm_actions(options = {})
      #
      # === Options:
      #
      # * +:alarm_names+ - *required* - (Array<String>)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :enable_alarm_actions, 'EnableAlarmActions'

      # TODO: documentation
      define_client_method :get_metric_statistics, 'GetMetricStatistics'

      # Calls the ListMetrics API operation.
      # @method list_metrics(options = {})
      #
      # === Options:
      #
      # * +:dimensions+ - - (Array<Hash>)
      # * +:metric_name+ - - (String)
      # * +:namespace+ - - (String)
      # * +:next_token+ - - (String)
      #
      # === Response Structure:
      #
      # * +:metrics+ - (Array<Hash>)
      #   * +:dimensions+ - (Array<Hash>)
      #   * +:metric_name+ - (String)
      #   * +:namespace+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :list_metrics, 'ListMetrics'

      # Calls the PutMetricAlarm API operation.
      # @method put_metric_alarm(options = {})
      #
      # === Options:
      #
      # * +:actions_enabled+ - - (Boolean)
      # * +:alarm_actions+ - - (Array<String>)
      # * +:alarm_description+ - - (String)
      # * +:alarm_name+ - *required* - (String)
      # * +:comparison_operator+ - *required* - (String)
      # * +:dimensions+ - - (Array<Hash>)
      # * +:evaluation_periods+ - *required* - (Integer)
      # * +:insufficient_data_actions+ - - (Array<String>)
      # * +:metric_name+ - *required* - (String)
      # * +:namespace+ - *required* - (String)
      # * +:ok_actions+ - - (Array<String>)
      # * +:period+ - *required* - (Integer)
      # * +:statistic+ - *required* - (String)
      # * +:threshold+ - *required* - (Float)
      # * +:unit+ - - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :put_metric_alarm, 'PutMetricAlarm'

      # TODO: documentation
      define_client_method :put_metric_data, 'PutMetricData'

      # Calls the SetAlarmState API operation.
      # @method set_alarm_state(options = {})
      #
      # === Options:
      #
      # * +:alarm_name+ - - (String)
      # * +:state_reason+ - - (String)
      # * +:state_reason_data+ - - (String)
      # * +:state_value+ - - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :set_alarm_state, 'SetAlarmState'

      ## end client methods ##

    end
  end
end
