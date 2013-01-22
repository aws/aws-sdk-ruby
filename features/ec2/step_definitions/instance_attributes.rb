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

When /^I get the instance\'s user data$/ do
  @result = @instance.user_data
end

When /^I get the instance type$/ do
  @result = @instance.instance_type
end

When /^I ask if termination is disabled$/ do
  @result = @instance.api_termination_disabled?
end

Then /^the result should (eventually )?be (false|true)$/ do |eventual, truthiness|
  l = lambda { @result.should send("be_#{truthiness}") }
  if eventual == "eventually"
    eventually(&l)
  else
    l.call
  end
end

When /^I disable API termination for the instance$/ do
  @instance.api_termination_disabled = true
end

Then /^the instance should eventually have API termination disabled$/ do
  eventually { @instance.api_termination_disabled?.should be_true }
end

When /^I set the instance\'s user data to "([^\"]*)"$/ do |data|
  @instance.user_data = data
end

Then /^the instance\'s user data should eventually be "([^\"]*)"$/ do |data|
  eventually { @instance.user_data.should == data }
end

When /^I change the instance type to "([^\"]*)"$/ do |type|
  @instance.instance_type = type
end

Then /^the instance type should eventually be "([^\"]*)"$/ do |type|
  eventually { @instance.instance_type.should == type }
end

When /^I ask if source\/destination checking is enabled$/ do
  @result = @instance.source_dest_check?
end

When /^I disable source\/destination checking$/ do
  @instance.source_dest_check = false
end

Then /^the instance should eventually have source\/destination checking disabled$/ do
  eventually { @instance.source_dest_check?.should be_false }
end

When /^I get the instance\-initiated shutdown behavior$/ do
  @result = @instance.instance_initiated_shutdown_behavior
end

When /^I set the instance\-initiated shutdown behavior to "([^\"]*)"$/ do |behavior|
  @instance.instance_initiated_shutdown_behavior = behavior
end

Then /^the instance\-initiated shutdown behavior should eventually be "([^\"]*)"$/ do |behavior|
  eventually { @instance.instance_initiated_shutdown_behavior.should == behavior }
end

When /^I get the instance\'s (kernel|ramdisk) ID$/ do |kind|
  @result = @instance.send("#{kind}_id")
end

When /^I set the instance\'s (kernel|ramdisk) ID to "([^\"]*)"$/ do |kind, id|
  @instance.send("#{kind}_id=", id)
end

Then /^the instance\'s (kernel|ramdisk) ID should eventually be "([^\"]*)"$/ do |kind, id|
  eventually { @instance.send("#{kind}_id").should == id }
end

Given /^I put the instance into a stopped state$/ do
  step %(I wait for the instance status to be "running")
  step %(I stop the instance)
  step %(I wait for the instance status to be "stopped")
end

When /^I get the instance\'s root device name$/ do
  @result = @instance.root_device_name
end

When /^I get the instance\'s block device mappings$/ do
  @result = @instance.block_device_mappings
end

Then /^the result should have the following mappings:$/ do |table|
  table.hashes.each do |h|
    @result.should have_key(h["device name"])
    mapping = @result[h["device name"]]
    mapping.delete_on_termination?.to_s.should == h["delete on termination"]
  end
end

When /^I query the attributes of the instance$/ do
  # sugar
end

Then /^I get values like the following from the instance:$/ do |table|
  table.rows_hash.each do |attribute, value_pattern|
    @instance.send(attribute).to_s.should match(Regexp.compile(value_pattern))
  end
end

When /^I ask if monitoring is enabled$/ do
  @result = @instance.monitoring_enabled?
end

When /^I (enable|disable) monitoring on the instance$/ do |action|
  @instance.monitoring_enabled = (action == "enable")
end

Then /^the instance should eventually have monitoring (enabled|disabled)$/ do |status|
  eventually do
    @instance.monitoring_enabled?.should send("be_#{status == 'enabled'}")
  end
end

When /^I get the instance\'s availability zone$/ do
  @result = @instance.availability_zone
end

When /^I get the instance\'s state transition reason$/ do
  @result = @instance.state_transition_reason
end

Then /^the result should match "([^\"]*)"$/ do |pattern|
  @result.should match(Regexp.compile(pattern))
end

When /^I get the instance\'s launch time$/ do
  @result = @instance.launch_time
end

Then /^the result should be a time within the last hour$/ do
  @result.should be_a(Time)
  @result.should be_within(60*60).of(Time.now)
end

When /^I get the instance\'s platform$/ do
  @result = @instance.platform
end

When /^I reset the instance\'s kernel ID$/ do
  @instance.reset_kernel_id
end

When /^I reset the instance\'s ramdisk ID$/ do
  @instance.reset_ramdisk_id
end

When /^I ask for the security groups associated with the instance$/ do
  @security_groups = @result = @instance.security_groups
end

Then /^the result should be an array$/ do
  @result.should be_an(Array)
end

When /^I get the instance\'s image ID$/ do
  @result = @instance.image_id
end

Then /^the instance key pair should be the one I created it with$/ do
  @instance.key_pair.should == @key_pair
end

Given /^I request to run an instance from a windows image$/ do
  @instance = @ec2.images.
    filter("is-public", "true").
    filter("platform", "windows").
    #filter("manifest-location", "*English-Base*").
    sort_by { |i| i.location }.last.
    run_instance(:instance_type => "m1.small")
end

When /^I list instances filtering by the instance ID I just created$/ do
  @result = @ec2.instances.filter("instance-id", @instance.id)
end

When /^I get the instance type of the first item in the result$/ do
  @result = @result.first.instance_type
end
