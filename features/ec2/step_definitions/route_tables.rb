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

When /^I create a route table$/ do
  @route_table = @vpc.route_tables.create
  @created_route_tables << @route_table
end

When /^I delete the route table$/ do
  @route_table.delete
end

Then /^the subnet route table should be the main route table$/ do
  @subnet.route_table.should == @vpc.route_tables.main_route_table
end

When /^I assign the route table to the subnet$/ do
  @subnet.route_table = @route_table
end

Then /^the route table should be associated with the subnet$/ do
  @route_table.subnets.should include(@subnet)
end

Then /^the main route table should have no associated subnets$/ do
  @vpc.route_tables.main_route_table.subnets.should == []
end

When /^I create a route for the vpc instance$/ do
  sleep 1 while @instance.status == :pending
  @route_table.create_route('10.0.0.0/0', :instance => @instance)
end

Then /^the route table should have (\d+) routes$/ do |count|
  @route_table.routes.count.should == count.to_i
end
