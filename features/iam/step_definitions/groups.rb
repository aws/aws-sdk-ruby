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

Then /^the result should be a group$/ do
  @result.should be_an(IAM::Group)
end

When /^I create an IAM group named "([^\"]*)"(?: with the path "([^\"]*)")?$/ do |name, path|
  @group = @result =
    if path.to_s.empty?
      @iam.groups.create(name)
    else
      @iam.groups.create(name, :path => path)
    end
  @created_groups << @group
end

Given /^I create an IAM group( with the path "[^\"]*")?$/ do |path_phrase|
  step %(I create an IAM group named "RubyTest-#{Time.now.to_f}"#{path_phrase})
end

Given /^I create IAM group number (\d+)( with the path "[^\"]*")?$/ do |number, path_phrase|
  step %(I create an IAM group#{path_phrase})
  @numbered_groups[number] = @group
end

When /^I delete the group$/ do
  @group.delete
end

When /^I list IAM groups$/ do
  @result = @iam.groups
end

Then /^the result should include the group I created$/ do
  @result.to_a.should include(@group)
end

When /^I list IAM groups with the path prefix "([^\"]*)"$/ do |prefix|
  @result = @iam.groups.with_prefix(prefix)
end

Then /^the result should include (\d+) groups$/ do |n|
  @result.to_a.size.should == n.to_i
end

Then /^the result should include group (\d+)$/ do |n|
  @result.to_a.should include(@numbered_groups[n])
end

Given /^I create (\d+) IAM groups$/ do |n|
  n.to_i.times do
    step %(I create an IAM group)
  end
end

When /^I list IAM groups with a limit of (\d+) and batch_size of (\d+)$/ do |limit, batch_size|
  @result = @iam.groups.each(:limit => limit.to_i,
                             :batch_size => batch_size.to_i) { |g| }
end

When /^I ask if the group exists$/ do
  @result = @group.exists?
end

Given /^I ask for the group named "([^\"]*)"$/ do |name|
  @group = @result = @iam.groups[name]
end

When /^I add the user to the group$/ do
  @group.users.add @user
end

Then /^the user should (not )?be in the group$/ do |should_not|
  @group.users.send(should_not == "not " ? :should_not : :should,
                    include(@user))
end

When /^I remove the user from the group$/ do
  @group.users.remove @user
end

When /^I add a policy named "([^\"]*)" to the group$/ do |policy_name|
  @policy_document = AWS::IAM::Policy.new do |p|
    p.allow(:actions => ["s3:*"],
            :resources => :any,
            :principals => :any)
  end
  @group.policies[policy_name] = @policy_document
end

Then /^the group should( not)? have a policy named "([^\"]*)"$/ do |should_not, policy_name|
  should_method = (should_not == " not" ? :should_not : :should)
  @group.policies.send(should_method, include(policy_name))
end

Then /^the group\'s "([^\"]*)" policy should be the same document that I added$/ do |policy_name|
  @group.policies[policy_name].should == @policy_document
end

When /^I list the policies in the group$/ do
  @result = @group.policies
end

Then /^the result should include the policy I created$/ do
  @result.values.should include(@policy_document)
end

When /^I remove the "([^\"]*)" policy from the group$/ do |policy_name|
  @group.policies.delete(policy_name)
end

When /^I change the path on the group to "([^\"]*)"$/ do |path|
  @group.path = path
end

Then /^the group arn should contain the path$/ do
  @group.arn.should include(@group.path)
end

When /^I compute a hash mapping ARN to group name$/ do
  @iam.groups.inject({}) do |hash, group|
    hash[group.arn] = group.name
    hash
  end
end

When /^I compute the list of unique path names among my groups$/ do
  @iam.groups.map { |g| g.path }.uniq
end

When /^I access the following attributes of the group:$/ do |table|
  table.raw.flatten.each do |att|
    @group.send(att)
  end
end

When /^I compute a hash mapping user ID to user name for users in the group$/ do
  @group.users.inject({}) do |hash, user|
    hash[user.id] = user.name
  end
end

When /^I compute the list of unique path names among users in the group$/ do
  @group.users.map { |u| u.path }.uniq
end

Then /^the group should( not)? be in the list of groups for the user$/ do |should_not|
  should_method = (should_not == " not" ? :should_not : :should)
  @user.groups.send(should_method, include(@group))
end

When /^I compute a hash mapping group ID to group name for groups the user belongs to$/ do
  @user.groups.inject({}) do |hash, group|
    hash[group.id] = group.name
    hash
  end
end

When /^I compute the list of unique path names for groups the user belongs to$/ do
  @user.groups.map { |g| g.path }.uniq
end
