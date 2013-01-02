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

When /^I create a vpn connection$/ do
  @vpn_connection = @ec2.vpn_connections.create(
    :customer_gateway => @customer_gateway,
    :vpn_gateway => @vpn_gateway)
  @created_vpn_connections << @vpn_connection
end

Then /^the vpn connection should eventually have the state "([^"]*)"$/ do |state|
  eventually do
    @vpn_connection.state.to_s.should == state
  end
end
