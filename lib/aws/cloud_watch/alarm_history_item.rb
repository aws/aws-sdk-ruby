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

    # @attr_reader [String] alarm_name
    #
    # @attr_reader [String] data
    #
    # @attr_reader [String] item_type
    #
    # @attr_reader [String] summary
    #
    # @attr_reader [Time] timestamp
    #
    class AlarmHistoryItem < Core::Resource
      # @private
      def initialize alarm_name, options = {}
        @alarm_name = alarm_name
        @history_data = options[:history_data]
        @history_item_type = options[:history_item_type]
        @history_summary = options[:history_summary]
        @timestamp = options[:timestamp]
        super
      end

      attr_reader :alarm_name

      attr_reader :history_data

      alias_method :data, :history_data

      attr_reader :history_item_type

      alias_method :type, :history_item_type

      attr_reader :history_summary

      alias_method :summary, :history_summary

      attr_reader :timestamp

      protected
      def resource_identifiers
        [[:alarm_name, alarm_name], [:history_item_type, history_item_type], [:history_summary, history_summary], [:timestamp, timestamp]]
      end

      def get_resource attr_name = nil
        client.describe_alarm_history(:alarm_name => alarm_name)
      end
    end
  end
end
