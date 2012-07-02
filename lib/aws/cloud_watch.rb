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
      autoload :AlarmHistoryItem, 'alarm_history_item'
      autoload :AlarmHistoryItemCollection, 'alarm_history_item_collection'
      autoload :Client, 'client'
#     autoload :Datapoint, 'datapoint'
      autoload :Dimension, 'dimension'
      autoload :DimensionFilter, 'dimension'
      autoload :Errors, 'errors'
      autoload :Metric, 'metric'
      autoload :MetricCollection, 'metric_collection'
      autoload :MetricAlarm, 'metric_alarm'
      autoload :MetricAlarmCollection, 'metric_alarm_collection'
#     autoload :MetricDatum, 'metric_datum'
#     autoload :StatisticSet, 'statistic_set'
      autoload :Request, 'request'
    end

    include Core::ServiceInterface

    # @return [MetricAlarmCollection]
    def alarms options = {}
      MetricAlarmCollection.new(options.merge(:config => config))
    end
    alias_method :metric_alarms, :alarms

    # @return [MetricCollection]
    def metrics options = {}
      MetricCollection.new(options.merge(:config => config))
    end
  end
end
