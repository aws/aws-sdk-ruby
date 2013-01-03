# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require File.expand_path(File.dirname(__FILE__) + '/../samples_config')

@cloud_watch = AWS::CloudWatch.new

puts "Using CloudWatch endpoint : #{@cloud_watch.client.endpoint}"

def print_cloud_watch_alarms_for_account
  puts "--------------------------------------"
  puts "CloudWatch Alarm's for AWS Access Key :  #{@cloud_watch.config.access_key_id}"
  @cloud_watch.alarms.each do |alarm|
    puts "- #{alarm.name}"
  end
  puts "--------------------------------------"  
end

print_cloud_watch_alarms_for_account

test_alarm_name = "TestAlarm-#{Time.now}"
puts "Creating new CloudWatch Alarm : #{test_alarm_name}"

test_metric_namespace = 'MyTestNamespace'
test_metric_name = "MyTestCustomMetric"

new_alarm = @cloud_watch.alarms.create test_alarm_name, {
  :namespace => test_metric_namespace, 
  :metric_name => test_metric_name, 
  :statistic => 'Average', 
  :period => 60, 
  :dimensions => [],
  :evaluation_periods => 1,
  :threshold => 5,
  :comparison_operator => 'GreaterThanThreshold'}

print_cloud_watch_alarms_for_account

puts "[#{new_alarm.name}] - Current State :  #{new_alarm.state_value}"

custom_metric = AWS::CloudWatch::Metric.new(test_metric_namespace, test_metric_name)

metric_datapoint_value = 6
puts "Publishing a metric datapoint to cause ALARM state [#{test_metric_namespace}, #{test_metric_name}, #{metric_datapoint_value}]"
puts custom_metric.put_data [{:value => metric_datapoint_value}]
puts "sleeping for 90 seconds"
sleep(90)
puts "[#{new_alarm.name}] - Current State :  #{@cloud_watch.alarms[test_alarm_name].state_value}"


metric_datapoint_value = 3
puts "Publishing a metric datapoint to cause OK state [#{test_metric_namespace}, #{test_metric_name}, #{metric_datapoint_value}]"
puts custom_metric.put_data [{:value => metric_datapoint_value}]
puts "sleeping for 90 seconds"
sleep(90)
puts "[#{new_alarm.name}] - Current State :  #{@cloud_watch.alarms[test_alarm_name].state_value}"


puts "[#{new_alarm.name}] - deleting alarm"
@cloud_watch.alarms[test_alarm_name].delete

puts "---------------------------------------"
puts "History for #{new_alarm.name}"
new_alarm.history_items.each do |history_item|
  puts "- #{history_item.timestamp} - #{history_item.history_summary}"
end

print_cloud_watch_alarms_for_account
