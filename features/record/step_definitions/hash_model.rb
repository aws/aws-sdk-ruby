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

Around("@orm", "@hash_model") do |scenario,block|

  class ExampleClass < AWS::Record::HashModel; end

  block.call

  Object.send(:remove_const, :ExampleClass)

end

Given /^I configure the HashModel example class with:$/ do |expression|
  ExampleClass.module_eval(expression)
end

When /^I call create_table on the HashModel example class$/ do
  @table = ExampleClass.create_table(10,5)
end

When /^the table should have the hash key :id => :string$/ do
  @table.hash_key.name.should == 'id'
  @table.hash_key.type.should == :string
end

When /^I should be able to delete the table$/ do
  @table.delete
end

Given /^I set the AWS::Record\.table_name_prefix to "([^"]*)"$/ do |prefix|
  AWS::Record.table_prefix = prefix
end

Given /^I set the example class shard name to "([^"]*)"$/ do |shard_name|
  ExampleClass.set_shard_name(shard_name)
end

Then /^the table should be named "([^"]*)"$/ do |table_name|
  @table.name.should == table_name
end

When /^I should be able to reset the table prefix$/ do
  AWS::Record.table_prefix = nil
end
