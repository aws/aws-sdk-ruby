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

Around("@orm", "~@dnamo_db") do |scenario,block|

  class ExampleClass < AWS::Record::Base; end

  block.call

  Object.send(:remove_const, :ExampleClass)

end

Around("@orm", "~@dnamo_db", "~@validations") do |scenario,block|

  SimpleDB.new.domains.create(ExampleClass.domain_name)

  block.call

  SimpleDB.new.domains[ExampleClass.domain_name].delete!

end

Given /^I configure the example class with:$/ do |expression|
  ExampleClass.module_eval(expression)
end

Given /^I enumerate items with the following expression:$/ do |expression|
  AWS::SimpleDB.consistent_reads do
    @records = ExampleClass.module_eval(expression).to_a
  end
end

Given /^I evaluate the following expression:$/ do |expression|
  @result = ExampleClass.module_eval(expression)
end

Given /^I create a record with the following attributes:$/ do |table|
  data = {}
  table.hashes.each do |hash|
    data[hash['ATTRIBUTE']] = hash['VALUE']
  end
  @record = ExampleClass.new(data)
  @record.save!
end

Then /^the records should include the record I created$/ do
  @found_record = @records.detect{|r| r.id == @record.id }
  @found_record.should be_a(ExampleClass)
end

Then /^its "([^"]*)" attribute should have the value "([^"]*)"$/ do |attr,value|
  @found_record.attributes[attr].to_s.should == value
end

