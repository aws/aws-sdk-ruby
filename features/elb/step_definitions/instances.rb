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

When /^I add the instances to the load balancer$/ do
  @load_balancer.instances.add(@instance)
end

Then /^the load balancer should have (\d+) instance\(s\)$/ do |size|
  @load_balancer.instances.to_a.size.should == size.to_i
end

Then /^the load balancer instances should include the instance$/ do
  @load_balancer.instances.should include(@instance)
end

When /^I remove the isntance from the load balancer$/ do
  @load_balancer.instances[@instance.id].remove_from_load_balancer
end

Then /^instance health should return hash$/ do
  health = @load_balancer.instances[@instance.id].elb_health
  health.keys.collect(&:to_s).sort.should ==
    [:description, :reason_code, :state].collect(&:to_s).sort
end
