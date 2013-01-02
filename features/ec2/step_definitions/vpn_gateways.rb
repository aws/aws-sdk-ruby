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

When /^I create a vpn gateway$/ do
  @vpn_gateway = @ec2.vpn_gateways.create
  @created_vpn_gateways << @vpn_gateway
end

Then /^the vpn gateway should exist$/ do
  @vpn_gateway.exists?.should == true
end

Then /^the vpn gateway state should eventually be "([^"]*)"$/ do |state|
  eventually do
    @vpn_gateway.state.to_s.should == state
  end
end

When /^I delete the vpn gateway$/ do
  @vpn_gateway.delete
end

When /^I attach the vpn gateway to the vpc$/ do
  @vpn_gateway.attach(@vpc)
end

Then /^the vpn gateway's vpc should match$/ do
  @vpn_gateway.vpc.should == @vpc
end

When /^I detach the vpn gateway and vpc$/ do
  @vpn_gateway.detach(@vpc)
end

Then /^the vpn gateway attachment state should eventually be "([^"]*)"$/ do |state|
  eventually do
    @vpn_gateway.attachments.first.state.to_s.should == state
  end
end
