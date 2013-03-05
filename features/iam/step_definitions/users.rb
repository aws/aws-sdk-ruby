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

When /^I create an IAM user$/ do
  @user_name = "ruby-integreation-test-#{Time.now.to_i}"
  @user = @iam.users.create(@user_name)
  @created_users << @user
end

When /^I delete the IAM user$/ do
  @user.delete
end

When /^I list IAM users$/ do
  @users = @iam.users.to_a
end

Then /^the IAM user should be in the list$/ do
  @users.should include(@user)
end

Given /^I create (\d+) IAM users$/ do |count|
  count.to_i.times do |n|
    @created_users << @iam.users.create("ruby-test-#{n}-#{Time.now.to_i}")
  end
end

When /^I list IAM users with a limit of (\d+) and batch_size of (\d+)$/ do |limit,batch_size|
  limit = limit.to_i
  batch_size = batch_size.to_i
  @users = @iam.users.enumerator(:limit => limit, :batch_size => batch_size).to_a
end

When /^I get a reference to that user$/ do
  @user_ref = @iam.users[@user_name]
end

Then /^the user created_at dates should match$/ do
  # iam returns milliseconds in the create response, but not in list or get,
  # so turning the time object into an array drops the extra precisions
  @user_ref.create_date.to_a.should == @user.create_date.to_a
end

Then /^the user paths should match$/ do
  @user_ref.path.should == @user.path
end

Then /^the user arns should match$/ do
  @user_ref.arn.should == @user.arn
end

When /^I change the path on the user to "([^\"]*)"$/ do |new_path|
  @new_path = new_path
  @user.path = new_path
end

Then /^the user arn should contain the path$/ do
  @user.path.should =~ /#{@new_path}/
end

When /^I add a policy named "([^\"]*)" to the user$/ do |policy_name|
  @policy_document = AWS::IAM::Policy.new do |p|
    p.allow(:actions => ["s3:*"],
            :resources => :any,
            :principals => :any)
  end
  @user.policies[policy_name] = @policy_document
end

Then /^the user should( not)? have a policy named "([^\"]*)"$/ do |should_not, policy_name|
  should_method = (should_not == " not" ? :should_not : :should)
  @user.policies.send(should_method, include(policy_name))
end

Then /^the user\'s "([^\"]*)" policy should be the same document that I added$/ do |policy_name|
  @user.policies[policy_name].should == @policy_document
end

When /^I list the policies in the user$/ do
  @result = @user.policies
end

When /^I remove the "([^\"]*)" policy from the user$/ do |policy_name|
  @user.policies.delete(policy_name)
end

Given /^I add policy to the group that allows listing verified email addresses$/ do
  @policy = AWS::IAM::Policy.new
  @policy.allow(:actions => ['ses:ListVerifiedEmailAddresses'], :resources => :any)
  @group.policies['listEmailAddresses'] = @policy
end

When /^I create a new SES interface object with the new access keys$/ do
  @ses = AWS::SimpleEmailService.new(@access_key.credentials)
end

Then /^an error should be raised if I try to verify an email address$/ do
  sleep(2) # for eventual consistancy
  lambda {
    @ses.email_addresses.verify('foo@bar.com')
  }.should raise_error(/is not authorized to perform: ses:VerifyEmailAddress/)
end
