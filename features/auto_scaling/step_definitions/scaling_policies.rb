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

When /^I create an auto scaling policy$/ do
  @policy_name = "ruby-integration-test-#{Time.now.to_i}"
  @scaling_policy = @auto_scaling_group.scaling_policies.create(@policy_name,
    :adjustment_type => 'ExactCapacity',
    :scaling_adjustment => 1)
end

Then /^the auto scaling policy should exist$/ do
  @scaling_policy.exists?.should == true
end

Then /^the auto scaling group policies should include the policy$/ do
  @auto_scaling_group.scaling_policies.should include(@scaling_policy)
end

When /^I delete the auto scaling policy$/ do
  @scaling_policy.delete
end

Then /^the auto scaling policy should not exist$/ do
  @scaling_policy.exists?.should == false
end

Then /^the auto scaling group policies should not include the policy$/ do
  @auto_scaling_group.scaling_policies.should_not include(@scaling_policy)
end

Given /^I create a scaling policy with the following options:$/ do |table|
  options = {}
  table.hashes.each do |hash|
    value = hash['VALUE']
    value = value.to_i if value =~ /\d+/
    options[hash['OPT'].to_sym] = value
  end
  @policy_name = "ruby-integration-test-#{Time.now.to_i}"
  @scaling_policy = @auto_scaling_group.scaling_policies.create(@policy_name,
    options)
end

When /^I get the scaling policy by name$/ do
  @scaling_policy = @auto_scaling_group.scaling_policies[@policy_name]
end

Then /^the auto scaling policy adjustent type should be "([^"]*)"$/ do |type|
  @scaling_policy.adjustment_type.should == type
end

Then /^the auto scaling policy scaling adjustent should be (\d+)$/ do |num|
  @scaling_policy.scaling_adjustment.should == num.to_i
end

Then /^the cooldown should be nil$/ do
  @scaling_policy.cooldown.should == nil
end

When /^I update the scaling policy with the following options:$/ do |table|
  options = {}
  table.hashes.each do |hash|
    value = hash['VALUE']
    value = value.to_i if value =~ /\d+/
    options[hash['OPT'].to_sym] = value
  end
  @scaling_policy.update(options)
end

Then /^the cooldown should be (\d+)$/ do |num|
  @scaling_policy.cooldown.should == num.to_i
end
