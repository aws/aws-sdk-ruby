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

When /^I create a launch configuration$/ do
  name = "ruby-integration-test-#{Time.now.to_i}"
  image = "ami-8c1fece5"
  type = "t1.micro"
  @launch_configuration = @as.launch_configurations.create(name, image, type)
  @created_launch_configurations << @launch_configuration
end

Given /^I create a launch configuration with options$/ do
  name = "ruby-integration-test-#{Time.now.to_i}"
  image = "ami-8c1fece5"
  type = "t1.micro"
  opts = {
    :block_device_mappings => [
      {
        :device_name => '/dev/sda1',
        :virtual_name => 'ephemeral0',
      },
      {
        :device_name => '/dev/sda2',
        :ebs => { :volume_size => 10 },
      },
    ],
    :detailed_instance_monitoring => false,
    :kernel_id => 'kernel-id',
    :key_pair => @key_pair,
    :ramdisk_id => 'ramdisk-id',
    :security_groups => @created_security_groups,
    :user_data => 'user-data',
  }
  @launch_configuration = @as.launch_configurations.create(name, image, type, opts)
  @created_launch_configurations << @launch_configuration
end

When /^I delete the launch configuration$/ do
  @launch_configuration.delete
end

Then /^the launch configuration should exist$/ do
  @launch_configuration.exists?.should == true
end

Then /^the launch configuration should not exist$/ do
  @launch_configuration.exists?.should == false
end

When /^I get the launch configuration by name$/ do
  @launch_configuration = @as.launch_configurations[@launch_configuration.name]
end

Then /^the launch configuration should have the same attributes$/ do
  lc = @launch_configuration
  lc.detailed_instance_monitoring?.should == false
  lc.kernel_id.should == 'kernel-id'
  lc.key_pair.should == @key_pair
  lc.ramdisk_id.should == 'ramdisk-id'
  lc.security_groups.sort_by(&:id).should == @created_security_groups.sort_by(&:id)
  lc.user_data.should == 'user-data'
  lc.block_device_mappings.sort_by{|m| m[:device_name] }.should == [
    {
      :device_name => '/dev/sda1',
      :virtual_name => 'ephemeral0',
    },
    {
      :device_name => '/dev/sda2',
      :ebs => { :volume_size => 10 },
    },
  ]
end
