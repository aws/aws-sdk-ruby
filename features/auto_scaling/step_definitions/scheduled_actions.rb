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

When /^I create a scheduled action$/ do
  @name = "ruby-integration-test-#{Time.now.to_i}"
  @start_time = Time.now + 3600
  @end_time = Time.now + 3600 * 2
  @scheduled_action = @auto_scaling_group.scheduled_actions.create(@name,
    :desired_capacity => 2,
    :start_time => @start_time,
    :end_time => @end_time,
    :min_size => 1,
    :max_size => 3)
end

Then /^the auto scaling group should have (\d+) scheduled action$/ do |count|
  @auto_scaling_group.scheduled_actions.count.should == count.to_i
end

When /^I get the scheduled action by name$/ do
  @scheduled_action = @auto_scaling_group.scheduled_actions[@name]
end

Then /^the scheduled action should have the correct attributes$/ do
  @scheduled_action.name.should == @name
  @scheduled_action.start_time.to_i.should == @start_time.to_i
  @scheduled_action.end_time.to_i.should == @end_time.to_i
  @scheduled_action.desired_capacity.should == 2
  @scheduled_action.min_size.should == 1
  @scheduled_action.max_size.should == 3
end

Then /^the scheduled action should be in the list of scheduled actions$/ do
  @as.scheduled_actions.should include(@scheduled_action)
  @auto_scaling_group.scheduled_actions.should include(@scheduled_action)
end
