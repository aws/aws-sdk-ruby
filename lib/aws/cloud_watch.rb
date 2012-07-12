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

require 'aws/core'
require 'aws/cloud_watch/config'

module AWS
  class CloudWatch

    AWS.register_autoloads(self, 'aws/cloud_watch') do
      autoload :Alarm, 'alarm'
      autoload :AlarmCollection, 'alarm_collection'
      autoload :AlarmHistoryItem, 'alarm_history_item'
      autoload :AlarmHistoryItemCollection, 'alarm_history_item_collection'
      autoload :Client, 'client'
      autoload :Errors, 'errors'
      autoload :Metric, 'metric'
      autoload :MetricCollection, 'metric_collection'
      autoload :MetricAlarmCollection, 'metric_alarm_collection'
      autoload :MetricStatistics, 'metric_statistics'
      autoload :Request, 'request'
    end

    include Core::ServiceInterface

    # Puts data for a metric.  The metric is created if it does not already
    # exist.
    #
    #   cw.put_metric_data(
    #     :namespace => 'test/cli',
    #     :metric_data => [
    #       { :metric_name => 'sample', :value => 1 },
    #       { :metric_name => 'sample', :value => 2 },
    #       { :metric_name => 'sample', :value => 3 },
    #       { :metric_name => 'sample', :value => 4 },
    #       { :metric_name => 'sample', :value => 5 },
    #     ]
    #   )
    #
    # @param [Hash] options
    # @see Client#put_metric_data
    # @return [nil]
    #
    def put_metric_data options = {}
      client.put_metric_data(options)
      nil
    end

    # @return [AlarmCollection]
    def alarms
      AlarmCollection.new(:config => config)
    end

    # @return [AlarmHistoryItemCollection]
    def alarm_history_items
      AlarmHistoryItemCollection.new(:config => config)
    end

    # @return [MetricCollection]
    def metrics options = {}
      MetricCollection.new(options.merge(:config => config))
    end

  end
end
