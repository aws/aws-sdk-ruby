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

Given /^I create a vpc with the cidr block "([^"]*)"$/ do |cidr_block|
  @vpc = @ec2.vpcs.create(cidr_block)
  @created_vpcs << @vpc
end

Given /^I create a vpc security group$/ do
  name = "ruby-vpc-integreation-test-#{Time.now.to_i}"
  @security_group = @ec2.security_groups.create(name, :vpc => @vpc)
  @created_security_groups << @security_group
end

When /^I authorize "([^"]*)" egress with:$/ do |ip, table|
  options = {}
  table.hashes.each{|h| options[h['OPTION'].to_sym] = h['VALUE'] }
  @ip_permission = @security_group.authorize_egress(ip, options)
end

When /^I revoke egress authorization from "([^"]*)":$/ do |ip, table|
  options = {}
  table.hashes.each{|h| options[h['OPTION'].to_sym] = h['VALUE'] }
  @ip_permission = @security_group.revoke_egress(ip, options)
end

Given /^I create a subnet with the cidr block "([^"]*)"$/ do |cidr_block|
  @subnet = @vpc.subnets.create(cidr_block)
  @created_subnets << @subnet
end

When /^I request to run an vpc instance with the following parameters:$/ do |table|
  @run_in_vpc = true
  step "I request to run an instance with the following parameters:", table
end

Then /^the instance should have the correct vpc_id$/ do
  @instance.vpc.should == @vpc
end

Then /^the instance should have the correct subnet_id$/ do
  @instance.subnet.should == @subnet
end

Given /^I create a vpc$/ do
  step 'I create a vpc with the cidr block "10.0.0.0/16"'
end

When /^I delete the VPC$/ do
  @vpc.delete
end

Given /^I create (\d+) vpcs$/ do |count|
  count.to_i.times do
    step 'I create a vpc'
  end
end

When /^I enumerate vpcs$/ do
  @vpcs = @ec2.vpcs.to_a
end

Then /^The vpcs should be included$/ do
  @created_vpcs.each do |vpc|
    @vpcs.should include(vpc)
  end
end

When /^I get the vpc by its id$/ do
  @old_vpc = @vpc
  @vpc = @ec2.vpcs[@old_vpc.id]
end

Then /^the vpcs should have the same attributes$/ do
  @old_vpc.id.should == @vpc.id
  #@old_vpc.state.should == @vpc.state # not a static attribute, may change
  @old_vpc.cidr_block.should == @vpc.cidr_block
  @old_vpc.dhcp_options_id.should == @vpc.dhcp_options_id
  @old_vpc.instance_tenancy.should == @vpc.instance_tenancy
end

