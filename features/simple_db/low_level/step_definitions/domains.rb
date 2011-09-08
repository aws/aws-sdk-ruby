# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

Given /^I call create_domain (\d+) times$/ do |count|
  count.to_i.times do |n|
    create_domain_low_level(:domain_name => "test-domain-#{n}")
  end
end

When /^I call create_domain with "([^"]*)"$/ do |domain_name|
  create_domain_low_level(:domain_name => domain_name)
end

When /^I call create_domain with "([^"]*)" in "([^"]*)"$/ do |domain_name, endpoint|
  create_domain_low_level(:domain_name => domain_name, :endpoint => endpoint)
end

When /^I call list_domains with a limit of (\d+)$/ do |limit|
  @response = @sdb_client.list_domains(:limit => limit.to_i)
end

When /^I call list_domains with a limit of (\d+) and a next_token$/ do |limit|
  @prev_response = @response
  @response = @sdb_client.list_domains(
    :limit => limit.to_i,
    :next_token => @response.next_token
  )
end

When /^I call delete_domain with "([^"]*)"$/ do |domain_name|
  @response = @sdb_client.delete_domain(:domain_name => domain_name)
end

When /^I call domain_metadata with "([^"]*)"$/ do |domain_name|
  @response = @sdb_client.domain_metadata(:domain_name => domain_name)
end

Then /^The response should have at least (\d+) different domains$/ do |min|
  @response.domain_names.length.should >= min.to_i
  @response.domain_names.should_not == @prev_response.domain_names
end


Then /^I should receive a simple db response$/ do
  @response.should be_a(Core::Response)
  @response.response_metadata.request_id.should be_a(String)
  @response.response_metadata.request_id.should_not == ''
  @response.response_metadata.box_usage.should be_a(Float)
end

Then /^The response should have (\d+) domains$/ do |count|
  @response.domain_names.length.should == count.to_i
  @response.domain_names.each do |domain_name|
    domain_name.should be_a(String)
    domain_name.should_not == ''
  end
end

Then /^The response should have a next token$/ do
  @response.next_token.should be_a(String)
  @response.next_token.should_not == ''
end

Then /^The response should have metadata with "([^\"]*)" of (\d+)$/ do |method, size|
  @response.send(method).should == size.to_i
end

Then /^The response should have metadata with a timestamp$/ do
  @response.timestamp.should_not be_nil
  @response.timestamp.to_s.should =~ /\d+/
end
