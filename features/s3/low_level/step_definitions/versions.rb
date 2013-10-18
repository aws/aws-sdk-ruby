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

Given /^ my account has a versioned bucket in it$/ do
  step "I call create_bucket"
  step "I enable versioning for the bucket"
end

When /^I call set_bucket_versioning with "([^\"]*)"$/ do |state|
  @s3_client.set_bucket_versioning(
    :bucket_name => @bucket_name,
    :state => state.to_sym)
end

Then /^get_bucket_versioning should return "([^\"]*)"$/ do |status|
  status = @s3_client.get_bucket_versioning(:bucket_name => @bucket_name).status
  status.should == status.to_sym
end
