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

When /^I ask for the list of EC2 availability zones$/ do
  @result = @ec2.availability_zones.to_a
end

Then /^the result should contain the following zone information:$/ do |table|
  table.hashes.each do |h|
    @result.map { |r| r.name }.should include(h["name"])
    @result.map { |r| r.region.name }.should include(h["region"])
  end
end

When /^I group the availability zones by state$/ do
  @ec2.availability_zones.inject({}) do |hash, zone|
    (hash[zone.state] ||= []) << zone
    hash
  end
end

When /^I count the availability zones$/ do
  @ec2.availability_zones.inject(0) { |count, zone| count + 1 }
end
