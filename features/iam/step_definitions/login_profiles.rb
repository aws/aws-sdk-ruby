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

When /^I set the password for the user\'s login profile$/ do
  alpha = ("a".."z").to_a
  pass = ""
  10.times { pass << alpha[rand(alpha.size-1)] }
  begin
    @user.login_profile.password = pass
  rescue AWS::IAM::Errors::EntityTemporarilyUnmodifiable => e
    sleep 1
    retry
  end
end

Then /^the IAM user should have a login profile$/ do
  @user.login_profile.exists?.should be_true
end

When /^I get the create date for the user\'s login profile$/ do
  @user.login_profile.create_date
end
