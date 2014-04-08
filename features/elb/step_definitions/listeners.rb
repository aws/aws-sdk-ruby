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

When /^I create a load balancer listener with the following options:$/ do |table|
  opts = {}
  table.hashes.each do |hash|
    opt_name = hash['OPT_NAME'].to_sym
    opt_value = hash['VALUE'].send(hash['CAST'])
    opts[opt_name] = opt_value
  end
  @load_balancer.listeners.create(opts)
end

When /^I get the listener on port (\d+)$/ do |port|
  @listener = @load_balancer.listeners[port]
end

Then /^the listener should have the protocol :(.*)$/ do |protocol|
  @listener.protocol.should == protocol.to_sym
end

Then /^the listener should have the instance port (\d+)$/ do |port|
  @listener.instance_port.should == port.to_i
end

Then /^the listener should have the instance protocol :(.*)$/ do |protocol|
  @listener.instance_protocol.should == protocol.to_sym
end

Then /^the load balancer listeners should include the listener$/ do
  @load_balancer.listeners.should include(@listener)
end

Given /^I create a load balancer listener with the server certificate$/ do
  sleep(10)
  # eventual consistency, it takes a while before
  # elb acknowledges the iam server cert
  @listener = @load_balancer.listeners.create(
    :port => 443,
    :protocol => :https,
    :instance_port => 443,
    :instance_protocol => :https,
    :server_certificate => @server_cert.arn)
end

When /^I set the server certificate on the load balancer listener$/ do
  sleep(10)
  # eventual consistency, it takes a while before
  # elb acknowledges the iam server cert
  @listener.server_certificate = @server_cert.arn
end

Then /^the load balancer listener should have the new certificate$/ do
  @load_balancer.listeners[@listener.port].server_certificate.should ==
    @server_cert
end

When /^I set the policy to the listener on port (\d+)$/ do |port|
  @load_balancer.listeners[port].policy = @load_balancer_policy
end

Then /^the listener on port (\d+) should have the policy$/ do |port|
  @load_balancer.listeners[port].policy.should == @load_balancer_policy
end

Then /^I remove the policy from the listener on port (\d+)$/ do |port|
  @load_balancer.listeners[port].remove_policy
end

Then /^the listener on port (\d+) should have no policy$/ do |port|
  @load_balancer.listeners[port].policy.should == nil
end

Then /^the listener should exist$/ do
  @listener.exists?.should == true
end

When /^I delete the listener$/ do
  @listener.delete
end

Then /^the listener should not exist$/ do
  @listener.exists?.should == false
end
