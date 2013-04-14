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

When /^I create a customer gateway with the bgp_asn of (\d+) and ip address of "([^\"]*)"$/ do |bgp_asn, ip_address|
  @customer_gateway = @ec2.customer_gateways.create(bgp_asn.to_i, ip_address)
  @created_customer_gateways << @customer_gateway
end

When /^I create a customer gateway$/ do
  step 'I create a customer gateway with the bgp_asn of 65534 and ip address of "1.2.3.4"'
end

When /^I get the customer gateway by id$/ do
  @customer_gateway = @ec2.customer_gateways[@customer_gateway.id]
end

Then /^the customer gateway should exist$/ do
  @customer_gateway.exists?.should == true
end

Then /^the customer gateway should eventually have the state "([^"]*)"$/ do |state|
  eventually do
    @customer_gateway.state.to_s.should == state
  end
end

When /^I delete the customer gateway$/ do
  @customer_gateway.delete
end

Then /^the account customer gatways should include the gateway$/ do
  @ec2.customer_gateways.should include(@customer_gateway)
end

Then /^the customer gateway should have the bgp_asn of (\d+)$/ do |bgp_asn|
  @customer_gateway.bgp_asn.to_s.should == bgp_asn
end

Then /^the customer gateway should have the ip address of "([^\"]*)"$/ do |ip_address|
  @customer_gateway.ip_address.should == ip_address
end
