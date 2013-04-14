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

Then /^I should receive a bucket$/ do
  step "I should receive a bucket named \"#{@bucket_name}\""
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

When /^I set the bucket tags to$/ do |table|
  tags = {}
  table.hashes.each do |tag|
    tags[tag['TAG']] = tag['VALUE']
  end
  @bucket.tags = tags
end

Then /^the tags should be$/ do |table|
  tags = {}
  table.hashes.each do |tag|
    tags[tag['TAG']] = tag['VALUE']
  end
  @bucket.tags.should eq(tags)
end

When /^I set the bucket tags to an empty hash$/ do
  @bucket.tags = {}
end

Then /^the bucket tags should be empty$/ do
  @bucket.tags.should eq({})
end

When /^I set the bucket rules$/ do
  @rules = [
    {
      :allowed_methods => ['GET'],
      :allowed_origins => ['*'],
    },{
      :allowed_methods => ['PUT'],
      :allowed_origins => ['http://example.com'],
    },
  ]
  @bucket.cors.set(@rules)
end

Then /^the bucket rules should match$/ do
  @bucket.cors.map(&:to_h).should eq(@rules)
end

When /^I add a rule$/ do
  rule = {
    :allowed_methods => ['POST'],
    :allowed_origins => ['http://foo.com'],
  }
  @rules << rule
  @bucket.cors.add(rule)
end

When /^I clear the bucket rules$/ do
  @bucket.cors.clear
end

Then /^the bucket should have no rules$/ do
  @bucket.cors.count.should eq(0)
end

Then /^the bucket be a website$/ do
  @bucket.website?.should be(true)
end

Then /^the bucket should not be a website$/ do
  @bucket.website?.should be(false)
end

When /^I enable website hosting$/ do
  @bucket.configure_website
end
