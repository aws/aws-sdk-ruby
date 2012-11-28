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
    class Client < Core::QueryClient

      define_client_methods('2010-08-01')

      # @private
      CACHEABLE_REQUESTS = Set[
        :describe_alarm_history,
        :describe_alarms,
        :describe_alarms_for_metric,
        :list_metrics,
      ]

      ## client methods ##

      # @!method delete_alarms(options = {})
      # Calls the DeleteAlarms API operation.
      # @param [Hash] options
      #   * +:alarm_names+ - *required* - (Array<String>)
      # @return [Core::Response]

      # @!method describe_alarm_history(options = {})
      # Calls the DescribeAlarmHistory API operation.
      # @param [Hash] options
      #   * +:alarm_name+ - (String)
      #   * +:history_item_type+ - (String)
      #   * +:start_date+ - (String<ISO8601 datetime>)
      #   * +:end_date+ - (String<ISO8601 datetime>)
      #   * +:max_records+ - (Integer)
      #   * +:next_token+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:alarm_history_items+ - (Array<Hash>)
      #     * +:alarm_name+ - (String)
      #     * +:timestamp+ - (Time)
      #     * +:history_item_type+ - (String)
      #     * +:history_summary+ - (String)
      #     * +:history_data+ - (String)
      #   * +:next_token+ - (String)

      # @!method describe_alarms(options = {})
      # Calls the DescribeAlarms API operation.
      # @param [Hash] options
      #   * +:alarm_names+ - (Array<String>)
      #   * +:alarm_name_prefix+ - (String)
      #   * +:state_value+ - (String)
      #   * +:action_prefix+ - (String)
      #   * +:max_records+ - (Integer)
      #   * +:next_token+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:metric_alarms+ - (Array<Hash>)
      #     * +:alarm_name+ - (String)
      #     * +:alarm_arn+ - (String)
      #     * +:alarm_description+ - (String)
      #     * +:alarm_configuration_updated_timestamp+ - (Time)
      #     * +:actions_enabled+ - (Boolean)
      #     * +:ok_actions+ - (Array<String>)
      #     * +:alarm_actions+ - (Array<String>)
      #     * +:insufficient_data_actions+ - (Array<String>)
      #     * +:state_value+ - (String)
      #     * +:state_reason+ - (String)
      #     * +:state_reason_data+ - (String)
      #     * +:state_updated_timestamp+ - (Time)
      #     * +:metric_name+ - (String)
      #     * +:namespace+ - (String)
      #     * +:statistic+ - (String)
      #     * +:dimensions+ - (Array<Hash>)
      #       * +:name+ - (String)
      #       * +:value+ - (String)
      #     * +:period+ - (Integer)
      #     * +:unit+ - (String)
      #     * +:evaluation_periods+ - (Integer)
      #     * +:threshold+ - (Numeric)
      #     * +:comparison_operator+ - (String)
      #   * +:next_token+ - (String)

      # @!method describe_alarms_for_metric(options = {})
      # Calls the DescribeAlarmsForMetric API operation.
      # @param [Hash] options
      #   * +:metric_name+ - *required* - (String)
      #   * +:namespace+ - *required* - (String)
      #   * +:statistic+ - (String)
      #   * +:dimensions+ - (Array<Hash>)
      #     * +:name+ - *required* - (String)
      #     * +:value+ - *required* - (String)
      #   * +:period+ - (Integer)
      #   * +:unit+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:metric_alarms+ - (Array<Hash>)
      #     * +:alarm_name+ - (String)
      #     * +:alarm_arn+ - (String)
      #     * +:alarm_description+ - (String)
      #     * +:alarm_configuration_updated_timestamp+ - (Time)
      #     * +:actions_enabled+ - (Boolean)
      #     * +:ok_actions+ - (Array<String>)
      #     * +:alarm_actions+ - (Array<String>)
      #     * +:insufficient_data_actions+ - (Array<String>)
      #     * +:state_value+ - (String)
      #     * +:state_reason+ - (String)
      #     * +:state_reason_data+ - (String)
      #     * +:state_updated_timestamp+ - (Time)
      #     * +:metric_name+ - (String)
      #     * +:namespace+ - (String)
      #     * +:statistic+ - (String)
      #     * +:dimensions+ - (Array<Hash>)
      #       * +:name+ - (String)
      #       * +:value+ - (String)
      #     * +:period+ - (Integer)
      #     * +:unit+ - (String)
      #     * +:evaluation_periods+ - (Integer)
      #     * +:threshold+ - (Numeric)
      #     * +:comparison_operator+ - (String)

      # @!method disable_alarm_actions(options = {})
      # Calls the DisableAlarmActions API operation.
      # @param [Hash] options
      #   * +:alarm_names+ - *required* - (Array<String>)
      # @return [Core::Response]

      # @!method enable_alarm_actions(options = {})
      # Calls the EnableAlarmActions API operation.
      # @param [Hash] options
      #   * +:alarm_names+ - *required* - (Array<String>)
      # @return [Core::Response]

      # @!method get_metric_statistics(options = {})
      # Calls the GetMetricStatistics API operation.
      # @param [Hash] options
      #   * +:namespace+ - *required* - (String)
      #   * +:metric_name+ - *required* - (String)
      #   * +:dimensions+ - (Array<Hash>)
      #     * +:name+ - *required* - (String)
      #     * +:value+ - *required* - (String)
      #   * +:start_time+ - *required* - (String<ISO8601 datetime>)
      #   * +:end_time+ - *required* - (String<ISO8601 datetime>)
      #   * +:period+ - *required* - (Integer)
      #   * +:statistics+ - *required* - (Array<String>)
      #   * +:unit+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:label+ - (String)
      #   * +:datapoints+ - (Array<Hash>)
      #     * +:timestamp+ - (Time)
      #     * +:sample_count+ - (Numeric)
      #     * +:average+ - (Numeric)
      #     * +:sum+ - (Numeric)
      #     * +:minimum+ - (Numeric)
      #     * +:maximum+ - (Numeric)
      #     * +:unit+ - (String)

      # @!method list_metrics(options = {})
      # Calls the ListMetrics API operation.
      # @param [Hash] options
      #   * +:namespace+ - (String)
      #   * +:metric_name+ - (String)
      #   * +:dimensions+ - (Array<Hash>)
      #     * +:name+ - *required* - (String)
      #     * +:value+ - (String)
      #   * +:next_token+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:metrics+ - (Array<Hash>)
      #     * +:namespace+ - (String)
      #     * +:metric_name+ - (String)
      #     * +:dimensions+ - (Array<Hash>)
      #       * +:name+ - (String)
      #       * +:value+ - (String)
      #   * +:next_token+ - (String)

      # @!method put_metric_alarm(options = {})
      # Calls the PutMetricAlarm API operation.
      # @param [Hash] options
      #   * +:alarm_name+ - *required* - (String)
      #   * +:alarm_description+ - (String)
      #   * +:actions_enabled+ - (Boolean)
      #   * +:ok_actions+ - (Array<String>)
      #   * +:alarm_actions+ - (Array<String>)
      #   * +:insufficient_data_actions+ - (Array<String>)
      #   * +:metric_name+ - *required* - (String)
      #   * +:namespace+ - *required* - (String)
      #   * +:statistic+ - *required* - (String)
      #   * +:dimensions+ - (Array<Hash>)
      #     * +:name+ - *required* - (String)
      #     * +:value+ - *required* - (String)
      #   * +:period+ - *required* - (Integer)
      #   * +:unit+ - (String)
      #   * +:evaluation_periods+ - *required* - (Integer)
      #   * +:threshold+ - *required* - (Float)
      #   * +:comparison_operator+ - *required* - (String)
      # @return [Core::Response]

      # @!method put_metric_data(options = {})
      # Calls the PutMetricData API operation.
      # @param [Hash] options
      #   * +:namespace+ - *required* - (String)
      #   * +:metric_data+ - *required* - (Array<Hash>)
      #     * +:metric_name+ - *required* - (String)
      #     * +:dimensions+ - (Array<Hash>)
      #       * +:name+ - *required* - (String)
      #       * +:value+ - *required* - (String)
      #     * +:timestamp+ - (String<ISO8601 datetime>)
      #     * +:value+ - (Float)
      #     * +:statistic_values+ - (Hash)
      #       * +:sample_count+ - *required* - (Float)
      #       * +:sum+ - *required* - (Float)
      #       * +:minimum+ - *required* - (Float)
      #       * +:maximum+ - *required* - (Float)
      #     * +:unit+ - (String)
      # @return [Core::Response]

      # @!method set_alarm_state(options = {})
      # Calls the SetAlarmState API operation.
      # @param [Hash] options
      #   * +:alarm_name+ - *required* - (String)
      #   * +:state_value+ - *required* - (String)
      #   * +:state_reason+ - *required* - (String)
      #   * +:state_reason_data+ - (String)
      # @return [Core::Response]

      ## end client methods ##

    end
  end
end
