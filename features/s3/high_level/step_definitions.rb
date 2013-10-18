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

Given /^I create a new bucket$/ do
  @old_bucket = @bucket
  @new_bucket = create_bucket_high_level
end

Given /^I create a bucket named "([^"]*)"$/ do |bucket_name|
  create_bucket_high_level(:name => bucket_name)
end

Given /^I create "([^"]*)" to the key "([^"]*)"$/ do |data, key|
  @object = @bucket.objects[key]
  @result = @object.write(data)
end

When /^I create a bucket with the location constraint "([^"]*)"$/ do |constraint|
  create_bucket_high_level(:location_constraint => constraint)
end

Given /^I write "([^"]*)" to the key "([^"]*)"$/ do |data, key|
  @object = @bucket.objects[key]
  @result = @object.write(data)
end

Given /^I have a bucket with the following keys:$/ do |table|
  step "I create a new bucket"
  table.hashes.each do |hash|
    step "I write \"foo\" to the key \"#{hash['key']}\""
  end
end

Given /^I have a bucket with (\d+) keys$/ do |count|
  step "I create a new bucket" unless @bucket
  count.to_i.times do |n|
    step "I write \"foo\" to the key \"#{'%04d' % n}\""
  end
end

Given(/^I monkey\-patch Net::HTTP to work with 100-continue$/) do
  AWS.patch_net_http_100_continue!
end

Given(/^I configure S3 with a (\d+)MB http_continue_threshold and (\d+) second continue timeout$/) do |size, seconds|
  @s3 = AWS::S3.new(
    :http_continue_threshold => size.to_i * 1024 * 1024,
    :http_continue_timeout => seconds.to_i)
end

When(/^I put an object that is (\d+)MB large$/) do |size|
  @response = @s3.client.put_object({
    :bucket_name => @bucket.name,
    :key => 'foo',
    :data => '.' * size.to_i * 1024 * 1024,
  })
end

Then(/^the request headers should have "Expect" set to "100-continue"$/) do
  @response.http_request.headers['expect'].should eq('100-continue')
end


