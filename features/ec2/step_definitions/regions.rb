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

When /^I ask for the list of EC2 regions$/ do
  @result = @ec2.regions.to_a
end

Then /^the result should contain the following region information:$/ do |table|
  table.hashes.each do |h|
    @result.map { |r| r.name }.should include h["name"]
    @result.map { |r| r.endpoint }.should include h["endpoint"]
  end
end

Given /^I use the regional interface for "([^\"]*)"$/ do |region|
  @orig_ec2 ||= @ec2
  @ec2 = @orig_ec2.regions[region]
end

Given /^I ask for the region "([^\"]*)" by name$/ do |name|
  @region = @ec2.regions[name]
end

When /^I ask if the region exists$/ do
  @result = @region.exists?
end

Given /^I ask for the first region$/ do
  @region = @ec2.regions.first
end

When /^I compute a hash of region name to region endpoint$/ do
  @ec2.regions.inject({}) do |hash, region|
    hash[region.name] = region.endpoint
    hash
  end
end

When /^I count the regions available to my account$/ do
  @ec2.regions.inject(0) { |count, region| count + 1 }
end
