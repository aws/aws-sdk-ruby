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

When /^I count the items in the domain$/ do
  @result = @domain.items.count(:consistent_read => true)
end

Then /^the result should be (\d+)$/ do |result|
  @result.should == result.to_i
end

Given /^I count the items in the domain with limit (\d+)$/ do |limit|
  @result = @domain.items.limit(limit.to_i).count(:consistent_read => true)
end

When /^I count the items in the domain where "([^\"]*)" is "([^\"]*)"$/ do |att, value|
  @result = @domain.items.
    where(Hash[[[att, value]]]).
    count(:consistent_read => true)
end

When /^I count the items in the domain ordering by size$/ do
  @result = @domain.items.order(:size).count(:consistent_read => true)
end
