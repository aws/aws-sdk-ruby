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

When /^I create an internet gateway$/ do
  @internet_gateway = @ec2.internet_gateways.create
  @created_internet_gateways << @internet_gateway
end

When /^I delete the internet gateway$/ do
  @internet_gateway.delete
end

Then /^the internet gateway should exist$/ do
  @internet_gateway.exists?.should == true
end

Then /^the internet gateway should not exist$/ do
  @internet_gateway.exists?.should == false
end

When /^I attach the internet gateway to the vpc$/ do
  @vpc.internet_gateway = @internet_gateway
end

Then /^the internet gateway's vpc should match$/ do
  @internet_gateway.vpc.should == @vpc
end

When /^I detach the internet gateway$/ do
  @internet_gateway.detach(@vpc)
end

Then /^the internet gateway should have no vpc or attachment$/ do
  @internet_gateway.attachments.should == []
  @internet_gateway.vpc.should == nil
end
