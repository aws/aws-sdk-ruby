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

include AWS

When /^I enable versioning on the bucket$/ do
  sleep(0.5)
  @bucket.enable_versioning
  sleep(0.5)
end

When /^I suspend versioning on the bucket$/ do
  sleep(0.5)
  @bucket.suspend_versioning
  sleep(0.5)
end

When /^the object should have a version_id$/ do
  @object.version_id.should be_a(String)
end

When /^the bucket should be versioned$/ do
  eventually do
    @bucket.versioned?.should == true
  end
end

When /^the bucket should not be versioned$/ do
  eventually do
    @bucket.versioned?.should == false
  end
end

When /^the bucket versioning state should be "([^"]*)"$/ do |state|
  eventually do
    @bucket.versioning_state.should == state.to_sym
  end
end

Then /^there should be (\d+) versions for the object$/ do |count|
  @object.versions.should == count.to_i
end

Then /^the bucket should have (\d+) versions$/ do |count|
  @versions = @bucket.versions.to_a
  @versions.length.should == count.to_i
end

Then /^version (\d+) should contain "([^"]*)"$/ do |n, data|
  @versions[n.to_i].read.should == data
end

Then /^version (\d+) should be a delete marker$/ do |n|
  @versions[n.to_i].delete_marker?.should == true
end

Then /^the latest bucket version should contain "([^"]*)"$/ do |data|
  @bucket.versions.latest.read.should == data
end

When /^I delete the latest bucket version$/ do
  @bucket.versions.latest.delete
end

Then /^the object "([^"]*)" should have (\d+) versions$/ do |key, count|
  @versions = @bucket.objects[key].versions.to_a
  @versions.length.should == count.to_i
end

Then /^the result should be the latest version for the key "([^\"]*)"$/ do |key|
  @result.should == @bucket.objects[key].versions.latest
end
