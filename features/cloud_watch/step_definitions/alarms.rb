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

When /^I create an alarm$/ do
  @alarm_name = "ruby-integration-test-#{Time.now.to_i}-#{rand(1000)}"
  @alarm = @metric.alarms.create(@alarm_name, {
    :comparison_operator => 'GreaterThanThreshold',
    :evaluation_periods => 2,
    :period => 60,
    :statistic => 'Average',
    :threshold => 50,
    :alarm_description => 'integration-test-alarm',
    :unit => 'Count',
  })
  @created_alarms << @alarm
end

Then /^the alarm should exist$/ do
  @alarm.should exist
end

When /^I delete the alarm$/ do
  @alarm.delete
end

Then /^the alarm should not exist$/ do
  @alarm.should_not exist
end

When /^I enumerate the alarms$/ do
  @alarms = @cloud_watch.alarms.to_a
end

Then /^The alarm should be in the list$/ do
  @alarms.should include(@alarm)
end

When /^I disable the alarm$/ do
  @alarm.disable
end

Then /^The alarm should be disabled$/ do
  eventually do
    @alarm.should_not be_enabled
  end
end

When /^I enable the alarm$/ do
  @alarm.enable
end

Then /^The alarm should be enabled$/ do
  eventually do
    @alarm.should be_enabled
  end
end
