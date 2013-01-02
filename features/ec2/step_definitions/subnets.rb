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

When /^I create a subnet with the with the cidr block "([^"]*)"$/ do |cidr_block|
  @subnet = @vpc.subnets.create(cidr_block)
  @created_subnets << @subnet
end

Given /^I create a subnet$/ do
  @subnet = @vpc.subnets.create(@vpc.cidr_block)
  @created_subnets << @subnet
end

When /^I delete the subnet$/ do
  @subnet.delete
end

When /^I get the subnet by id$/ do
  @old_subnet = @subnet
  @subnet = @ec2.subnets[@subnet.id]
end

When /^I get its static attributes$/ do
  @subnet.id.should == @old_subnet.id
  @subnet.vpc_id.should == @old_subnet.vpc_id
  #@subnet.state.should == @old_subnet.state
  @subnet.cidr_block.should == '10.0.0.0/16'
  @subnet.available_ip_address_count.should == 65531
  @subnet.availability_zone_name.should == @old_subnet.availability_zone_name
end
