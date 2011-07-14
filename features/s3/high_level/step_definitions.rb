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

Given /^I create a new bucket$/ do
  create_bucket_high_level
end

When /^I create a bucket with the location constraint "([^"]*)"$/ do |constraint|
  create_bucket_high_level(:location_constraint => constraint)
end

Given /^I write "([^"]*)" to the key "([^"]*)"$/ do |data, key|
  @object = @bucket.objects[key]
  @result = @object.write(data)
end

Given /^I have a bucket with the following keys:$/ do |table|
  Given "I create a new bucket"
  table.hashes.each do |hash|
    Given "I write \"foo\" to the key \"#{hash['key']}\""
  end
end

Given /^I have a bucket with (\d+) keys$/ do |count|
  Given "I create a new bucket" unless @bucket
  count.to_i.times do |n|
    Given "I write \"foo\" to the key \"#{'%04d' % n}\""
  end
end
