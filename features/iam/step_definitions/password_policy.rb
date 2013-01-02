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

When /^I set the account password policy to:$/ do |table|
  options = {}
  table.hashes.each do |hash|
    value = hash["VALUE"]
    value = value =~ /\d+/ ?
      value.to_i :
      value == "true"
    options[hash['OPT'].to_sym] = value
  end
  @iam.update_account_password_policy(options)
end

Then /^the account password policy eventually should be:$/ do |table|
  policy = {}
  table.hashes.each do |hash|
    value = hash["VALUE"]
    value = value =~ /\d+/ ?
      value.to_i :
      value == "true"
    policy[hash['OPT'].to_sym] = value
  end
  @iam.account_password_policy.should == policy
end

Given /^my account does not have a password policy$/ do
  if @iam.account_password_policy
    @iam.delete_account_password_policy
  end
end

When /^I delete the account password policy$/ do
  @iam.delete_account_password_policy
end

Then /^the account password policy should be nil$/ do
  @iam.account_password_policy.should == nil
end
