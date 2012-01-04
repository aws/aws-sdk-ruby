# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

Then /^I should receive a bucket$/ do
  Then "I should receive a bucket named \"#{@bucket_name}\""
end

Then /^I should receive a bucket named "([^\"]*)"$/ do |name|
  @bucket.should be_an S3::Bucket
  @bucket.name.should == name
end

When /^I ask for the bucket named "([^\"]*)"$/ do |bucket_name|
  @bucket = @s3.buckets[bucket_name]
end

When /^I ask for the bucket named "([^\"]*)" using a symbol$/ do |bucket_name|
  @bucket = @s3.buckets[bucket_name.to_sym]
end

When /^I ask for the bucket named "([^\"]*)" using a method$/ do |bucket_name|
  @bucket = @s3.buckets.send(bucket_name)
end

When /^I delete the bucket$/ do
  @s3.buckets[@bucket_name].delete
end

When /^I force delete the bucket$/ do
  @s3.buckets[@bucket_name].delete!
end

When /^I ask for the list of buckets as an array$/ do
  @buckets = @s3.buckets.to_a
end

Then /^the result should contain the bucket$/ do
  @buckets.should include(S3::Bucket.new(@bucket_name))
end

When /^I ask for the bucket owner$/ do
  @owner = @s3.buckets[@bucket_name].owner
end

When /^I ask for the bucket owner of the first item in the array$/ do
  @owner = @buckets.first.owner
end

Then /^the result should be an object with owner ID and name$/ do
  @owner.id.should == @test_config["owner_id"]
  @owner.display_name.should == @test_config["display_name"]
end

Then /^the bucket should have the location constraint of "([^"]*)"$/ do |constraint|
  @bucket.location_constraint.should == constraint
end
