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

When /^I create a network interface$/ do
  @network_interface = @subnet.network_interfaces.create
  @created_network_interfaces << @network_interface
end

Given /^I create a network interface with the security groups and described as "([^"]*)"$/ do |desc|
  @network_interface = @subnet.network_interfaces.create(
    :description => desc,
    :security_groups => @security_groups)
  @created_network_interfaces << @network_interface
end

When /^I get the network interface by id$/ do
  @network_interface = @subnet.network_interfaces[@network_interface.id]
end

Then /^the network interface should have the security groups$/ do
  @network_interface.security_groups.sort_by(&:name).should ==
    @security_groups.sort_by(&:name)
end

Then /^the network should be descrbied as "([^"]*)"$/ do |desc|
  @network_interface.description.should == desc
end

When /^I attach the network interface to the instance at index (\d+)$/ do |index|
  @instance.attach_network_interface(@network_interface, :device_index => index.to_i)
end

Then /^the network interface instance should match$/ do
  @network_interface.instance.should == @instance
  @instance.network_interfaces.should include(@network_interface)
end

When /^I detach the network interface from the instance$/ do
  @network_interface.detach
end

Then /^the network interface should have no attachment and no instance$/ do
  eventually do
    @network_interface.attachment.should == nil
    @network_interface.instance.should == nil
  end
end

Then /^the instance network interfaces should not include this one$/ do
  @instance.network_interfaces.should_not include(@network_interface)
end

When /^I assign the security groups to the network interface$/ do
  @network_interface.security_groups = @security_groups
end

Then /^the network interface should have the security groups assigned$/ do
  @network_interface.security_groups.sort_by(&:id).should ==
    @security_groups.sort_by(&:id)
end

Then /^the source destination check should be "([^"]*)"$/ do |state|
  @network_interface.source_dest_check?.to_s.should == state
end

When /^I set the source destination check to "([^"]*)"$/ do |state|
  @network_interface.source_dest_check = state == 'true'
end

Then /^the network interface attachment delete on termination should be "([^"]*)"$/ do |state|
  eventually do
    @network_interface.attachment.delete_on_termination?.to_s.should == state
  end
end

When /^I set the network interface attachment delete on termination to "([^"]*)"$/ do |state|
  @network_interface.attachment.delete_on_termination = (state == 'true')
end
