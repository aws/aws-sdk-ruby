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

Given /^I create an access key$/ do
  @access_key = @iam.access_keys.create
  @created_access_keys << @access_key
end

Then /^the access key should have a secret$/ do
  @access_key.secret.should be_a(String)
end

When /^I get a reference to that access key$/ do
  if @access_key.user
    @access_key = @access_key.user.access_keys[@access_key.id]
  else
    @access_key = @iam.access_keys[@access_key.id]
  end
end

Then /^accessing the secret should raise an error$/ do
  lambda {
    @access_key.secret
  }.should raise_error(/only available for new access keys/)
end

When /^I create an access key for the user$/ do
  @access_key = @user.access_keys.create
  @created_access_keys << @access_key
end

Then /^the access key status should be "([^"]*)"$/ do |status|
  @access_key.status.to_s.should == status
end

When /^I deactivate the access key$/ do
  @access_key.deactivate!
end
