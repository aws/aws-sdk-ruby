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

Given /^I create an account alias$/ do
  @alias = "rubyintegrationtest#{Time.now.to_i}"
  @iam.account_aliases.create(@alias)
  @created_account_aliases << @alias
end

When /^I delete the account alias$/ do
  @iam.account_aliases.delete(@alias)
end

Given /^I create (\d+) account aliases$/ do |count|
  count.to_i.times.each do |n|
    account_alias = "rubyintegrationtest#{Time.now.to_i}#{n}"
    @iam.account_aliases.create(account_alias)
    @created_account_aliases << account_alias
  end
end

When /^I list account aliases with a limit of (\d+) and batch_size of (\d+)$/ do |limit,batch_size|
  limit = limit.to_i
  batch_size = batch_size.to_i
  @aliases = @iam.account_aliases.enumerator(:limit => limit, :batch_size => batch_size).to_a
end

When /^I list the account aliases$/ do
  @account_aliases = @iam.account_aliases.to_a
end

Then /^the account alias should be in the list$/ do
  @account_aliases.should include(@alias)
end

When /^I set the account alias$/ do
  @alias = "rubyintegrationtest#{Time.now.to_i}"
  @iam.account_alias = @alias
  @created_account_aliases << @alias
end

Then /^the account alias should match the one I set$/ do
  @iam.account_alias.should == @alias
end

When /^I remove the account alias$/ do
  @iam.remove_account_alias
end
