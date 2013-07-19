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

When /^I enumerate reserved instance offerings$/ do
  @offerings = @ec2.reserved_instances_offerings.to_a
end

When /^I get a list of reserved instances offerings like:$/ do |expression|
  @offerings = eval(expression)
end

When /^I purchase a reserved instances offering$/ do
  offering_id = @test_config['reserved_instances_offering_id']
  @reservation = @ec2.reserved_instances_offerings[offering_id].purchase
end

Then /^reserved instances should contain the returned reservation$/ do
  @ec2.reserved_instances.should include(@reservation)
end

When /^I get the fixed price for the reservation$/ do
  @fixed_price = @ec2.reserved_instances[@reservation.id].fixed_price
end

Given /^I find the cheapest fixed price for a Linux\/UNIX reserved instance$/ do
  @ec2.reserved_instances_offerings.filter("product-description", "Linux/UNIX").
    map { |offering| offering.fixed_price }.min
end

Given /^I find the most expensive fixed price for a Linux\/UNIX reserved instance$/ do
  @ec2.reserved_instances_offerings.filter("product-description", "Linux/UNIX").
    map { |offering| offering.fixed_price }.max
end

When /^I find the most expensive fixed price reservation in my account$/ do
  @ec2.reserved_instances.map { |ri| ri.fixed_price }.max
end

When /^I count the reservations I have purchased$/ do
  @ec2.reserved_instances.inject(0) { |count, ri| count + 1 }
end

When(/^I enumerate reserved instance offerings with a limit of (\d+) and batch size of (\d+)$/) do |limit, batch_size|
  offerings = @ec2.reserved_instances_offerings
  offerings.enumerator(:limit => limit.to_i, :batch_size => batch_size.to_i).to_a
end
