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

When(/^I create a bucket$/) do
  @bucket_name = "aws-sdk-test-#{Time.now.to_i}-#{rand(1000)}"
  @s3.create_bucket(bucket: @bucket_name)
  @created_buckets << @bucket_name
end

Then(/^the bucket should exist$/) do
  expect { @s3.get_bucket_location(bucket: @bucket_name) }.not_to raise_error
end

When(/^I delete the bucket$/) do
  @s3.delete_bucket(bucket: @bucket_name)
  @created_buckets.delete(@bucket_name)
end

Then(/^the bucket should not exist$/) do
  pending
  expect {
    @s3.get_bucket_location(bucket: @bucket_name)
  }.to raise_error(Aws::S3::Errors::NoSuchBucket)
end
