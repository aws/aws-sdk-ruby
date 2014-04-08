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

Given /^I create a "([^"]*)" policy named "([^"]*)" with:$/ do |policy_type, policy_name, table|

  attributes = {}
  table.hashes.each do |hash|
    name = hash['OPT']
    attributes[name] ||= []
    attributes[name] << hash['VALUE']
  end

  @load_balancer_policy = @load_balancer.policies.create(policy_name,
    policy_type, attributes)

end

Then /^the load balancer should have (\d+) policies$/ do |size|
  @load_balancer.policies.to_a.size.should == size.to_i
end

Then /^the load balancer policies should be named:$/ do |table|
  names = table.hashes.collect{|hash| hash['NAME'] }
  @load_balancer.policies.collect{|p| p.name }.sort.should == names.sort
end

Then /^the policy attributes should match:$/ do |table|

  attributes = {}
  table.hashes.each do |hash|
    name = hash['OPT']
    value = hash['VALUE']
    attributes[name] ||= []
    attributes[name] << value
  end

  @load_balancer.policies[@load_balancer_policy.name].attributes.should ==
    attributes

end

When /^I delete the load balancer policy$/ do
  @load_balancer_policy.delete
end

Then /^the load balancer policy should exist$/ do
  @load_balancer_policy.exists?.should == true
end

Then /^the load balancer policy should not exist$/ do
  @load_balancer_policy.exists?.should == false
end
