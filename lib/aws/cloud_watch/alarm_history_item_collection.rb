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
    # @attr_reader [String] alarm_name
    #
    # @attr_reader [Time] end_date
    #
    # @attr_reader [String] history_item_type
    #
    # @attr_reader [Time] start_date
    #
    class AlarmHistoryItemCollection

      include Core::Collection::Limitable

      # @private
      def initialize options = {}
        @alarm_name = options[:alarm_name]
        @end_date = options[:end_date]
        @history_item_type = options[:history_item_type]
        @start_date = options[:start_date]
        super
      end

      attr_reader :alarm_name

      attr_reader :end_date

      attr_reader :history_item_type

      alias_method :item_type, :history_item_type

      attr_reader :start_date

      protected
      def _each_item next_token, limit, options = {}, &block
        options[:alarm_name] = alarm_name if alarm_name
        options[:end_date] = end_date if end_date
        options[:history_item_type] = history_item_type if history_item_type
        options[:start_date] = start_date if start_date
        options[:max_records] = limit if limit
        options[:next_token] = next_token if next_token

        resp = client.describe_alarm_history(options)
        resp.alarm_history_items.each do |details|
          alarm = AlarmHistoryItem.new_from(
            :describe_alarm_history, details, 
            details.alarm_name, 
            :history_data => details[:history_data], :history_item_type => details[:history_item_type],
            :history_summary => details[:history_summary], :timestamp => details[:timestamp],
            :config => config)
          yield(alarm)
        end
        resp.data[:next_token]
      end

    end
  end
end
