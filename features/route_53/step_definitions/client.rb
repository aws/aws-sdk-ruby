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

When /^I call \#create_hosted_zone on the client$/ do

  @name = "ruby-integration-test-#{Time.now.to_i}-#{rand(1000)}.com"
  @caller_reference = UUIDTools::UUID.random_create.to_s

  @response = @route_53_client.create_hosted_zone(
    :name => @name,
    :caller_reference => @caller_reference)

  @zone_id = @response[:hosted_zone][:id]

  @created_hosted_zone_ids << @zone_id

end

When /^I call \#get_hosted_zone on the client with the zone id$/ do
  @response = @route_53_client.get_hosted_zone(:id => @zone_id)
end

When /^I call \#delete_hosted_zone on the client with the zone id$/ do
  @response = @route_53_client.delete_hosted_zone(:id => @zone_id)
end

Then /^\#get_hosted_zone should raise "([^"]*)"$/ do |error_class_name|
  begin
    step "I call #delete_hosted_zone on the client with the zone id"
  rescue => @error
    @error.class.name.should eq(error_class_name)
  end
end

Given /^I call \#create_hosted_zone on the client (\d+) times$/ do |count|
  count.to_i.times do
    step "I call #create_hosted_zone on the client"
  end
end

When /^I call \#list_hosted_zone on the client$/ do
  @response = @route_53_client.list_hosted_zones
end

Then /^the response should contain the created hosted zone ids$/ do
  @created_hosted_zone_ids.each do |zone_id|
    @response[:hosted_zones].map{|z| z[:id] }.should include(zone_id)
  end
end
