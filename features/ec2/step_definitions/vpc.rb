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

Given /^I create a vpc with the cidr block "([^"]*)"$/ do |cidr_block|
  @vpc_cidr_block = cidr_block
  response = @ec2_client.create_vpc(:cidr_block => @vpc_cidr_block)
  @vpc_id = response.vpc.vpc_id
  @created_vpc_ids << @vpc_id
end

Given /^I create a vpc security group$/ do
  name = "ruby-vpc-integreation-test-#{Time.now.to_i}"
  @security_group = @ec2.security_groups.create(name, :vpc_id => @vpc_id)
  @created_security_groups << @security_group
end

When /^I authorize "([^"]*)" egress with:$/ do |ip, table|
  options = {}
  table.hashes.each{|h| options[h['OPTION'].to_sym] = h['VALUE'] }
  @ip_permission = @security_group.authorize_egress(ip, options)
end

When /^I revoke the returned ip permission$/ do
  @ip_permission.revoke
end

Given /^I create a subnet with the cidr block "([^"]*)"$/ do |cidr_block|
  @subnet_cidr_block = cidr_block
  response = @ec2_client.create_subnet(:cidr_block => @subnet_cidr_block,
    :vpc_id => @vpc_id)
  @subnet_id = response.subnet.subnet_id
  @created_subnet_ids << @subnet_id
end

When /^I request to run an vpc instance with the following parameters:$/ do |table|
  @run_in_vpc = true
  When "I request to run an instance with the following parameters:", table
end

Then /^the instance should have the correct vpc_id$/ do
  @instance.vpc_id.should == @vpc_id
end

Then /^the instance should have the correct subnet_id$/ do
  @instance.subnet_id.should == @subnet_id
end
