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

When /^I create an auto scaling group$/ do

  @group_name = "ruby-integration-test-#{Time.now.to_i}"

  @group_options = {
    :launch_configuration => @launch_configuration,
    :availability_zones => [
      EC2::AvailabilityZone.new('us-east-1b'),
      EC2::AvailabilityZone.new('us-east-1c'),
    ],
    :min_size => 1,
    :max_size => 3,
    # options below this line are truely optional
    :default_cooldown => 100,
    :desired_capacity => 1,
    :health_check_grace_period => 10,
    :health_check_type => :ec2,
    :termination_policies => [
      "Default",
    ],
    :tags => [
      { :key => 'k1' },
      { :key => 'k2', :value => 'v2' },
      { :key => 'k3', :value => 'v3', :propagate_at_launch => true },
      { :key => 'k4', :value => 'v4', :propagate_at_launch => false },
    ],
  }

  @auto_scaling_group = @as.groups.create(@group_name, @group_options)

  @auto_scaling_group.name.should == @group_name

  @created_auto_scaling_groups << @auto_scaling_group

end

Then /^the auto scaling group should exist$/ do
  eventually do
    @auto_scaling_group.exists?.should == true
  end
end

When /^I delete the auto scaling group$/ do
  @auto_scaling_group.delete!
end

Then /^the auto scaling group should not exist$/ do
  eventually do
    @auto_scaling_group.exists?.should == false
  end
end

When /^I get the auto scaling group by name$/ do
  @auto_scaling_group = @as.groups[@group_name]
end

Then /^the auto scaling group should have the options I created it with$/ do
  @group_options.each_pair do |key,expected|
    got = @auto_scaling_group.send(key)
    if key == :availability_zones
      got.sort_by(&:name).should == expected.sort_by(&:name)
    elsif key == :tags
      got.should eq(expected.collect{|tag|
        tag[:resource_type] = 'auto-scaling-group'
        tag[:resource_id] = @group_name
        tag[:propagate_at_launch] == true unless tag.key?(:propagate_at_launch)
        tag[:value] = nil unless tag[:value]
        tag
      })
      got.each{|tag| tag.resource.should == @auto_scaling_group }
    else
      got.should == expected
    end
  end
end

When /^I suspend the "([^"]*)" process$/ do |process|
  @auto_scaling_group.suspend_processes(process)
end

Then /^the auto scaling group should contain "([^"]*)" in the suspended processes$/ do |process|
  @auto_scaling_group.suspended_processes.keys.should include(process)
end

When /^I suspend all processes$/ do
  @auto_scaling_group.suspend_all_processes
end

Then /^the auto scaling group should have all processes suspended$/ do
  suspended = @auto_scaling_group.suspended_processes.keys
  @as.scaling_process_types.each do |process|
    suspended.should include(process)
  end
end

When /^I resume the "([^"]*)" process$/ do |process|
  @auto_scaling_group.resume_processes(process)
end

Then /^the auto scaling group should not contain "([^"]*)" in the suspended processes$/ do |process|
  @auto_scaling_group.suspended_processes.keys.should_not include(process)
end

When /^I resume all processes$/ do
  @auto_scaling_group.resume_all_processes
end

Then /^the auto scaling group should have no suspended processes$/ do
  @auto_scaling_group.suspended_processes.should be_empty
end

When /^I enable all metrics collection$/ do
  @auto_scaling_group.enable_all_metrics_collection
end

Then /^the auto scaling group should have all metrics enabled for "([^"]*)"$/ do |granularity|
  enabled = @auto_scaling_group.enabled_metrics
  @as.metric_collection_types.each do |type|
    enabled[type].should == granularity
  end
end

When /^I disable all metrics collection$/ do
  @auto_scaling_group.disable_all_metrics_collection
end

Then /^the auto scaling group should have no enabled metrics\.$/ do
  @auto_scaling_group.enabled_metrics.should be_empty
end
