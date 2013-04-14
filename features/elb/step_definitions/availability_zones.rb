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

When /^I enable the availability zone "([^"]*)" for the load balancer$/ do |zone_name|
  @load_balancer.availability_zones.enable(zone_name)
end

Then /^the load balancer should have the following availability zones:$/ do |table|

  zones = []
  table.hashes.each do |hash|
    zones << hash["AZ_NAME"]
  end

  @load_balancer.availability_zones.collect(&:name).sort.should == zones.sort
end

When /^I disable the availability zone "([^"]*)" for the load balancer$/ do |zone_name|
  @load_balancer.availability_zones.disable(zone_name)
end
