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

When /^I write the string "([^\"]*)" to it using server side encryption$/ do |contents|
  @object.write(contents, :server_side_encryption => :aes256)
end

Then /^the object should be stored with server side encryption$/ do
  @object.server_side_encryption?.should be_true
end

Given /^I have an Amazon S3 interface configured to use server side encryption$/ do
  @s3 = AWS::S3.new(:s3_server_side_encryption => :aes256)
  @s3_client = @s3.client
  @bucket = @s3.buckets[@bucket.name]
end

When /^I copy "([^\"]*)" to "([^\"]*)" with SSE enabled$/ do |from, to|
  @bucket.objects[from].copy_to(@bucket.objects[to],
                                :server_side_encryption => :aes256)
end

When /^I start an upload to object "([^\"]*)" with SSE enabled$/ do |key|
  @upload = @result = @bucket.objects[key].
    multipart_upload(:server_side_encryption => :aes256)
end
