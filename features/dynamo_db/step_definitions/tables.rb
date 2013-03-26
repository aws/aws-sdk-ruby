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

When /^I create a DynamoDB table(?: named "([^\"]*)")?( with a range key)?$/ do |name, range_key|

  name ||= "RubyTest-#{Time.now.to_f}"
  name = eval("\"#{name}\"")
  name = name.force_encoding("UTF-8") if name.respond_to?(:force_encoding)

  opts = { :hash_key => { :id => :string } }
  unless range_key.to_s.empty?
    opts[:range_key] = { :range => :number }
  end

  rcu = 10 # read capacity units
  wcu = 10 # write capacity units

  @result = @table = @dynamo_db.tables.create(name, rcu, wcu, opts)
  @created_tables << @table

end

Then /^the result should be a DynamoDB table$/ do
  @result.should be_a(DynamoDB::Table)
end

Then /^the table should eventually be active$/ do
  eventually { @table.status.should == :active }
end

Then /^the tables are eventually active$/ do
  eventually { @created_tables.map(&:status).uniq.should == [:active] }
end

Given /^I ask for the table named "([^\"]*)"$/ do |name|
  @result = @table = @dynamo_db.tables[name]
end

When /^I delete the table$/ do
  @table.delete
end

Then /^the list of all DynamoDB tables should include the table$/ do
  @dynamo_db.tables.should include(@table)
end

Then /^the table should exist$/ do
  @table.exists?.should be_true
end

When /^I access the following table attributes:$/ do |table|
  table.raw.flatten.each do |att|
    @table.send(att)
  end
end

When /^I eventually delete the table$/ do
  eventually { lambda { @table.delete }.should_not raise_error }
end

Then /^the table status should be :(\w+)$/ do |state_name|
  @table.status.should == state_name.to_sym
end

When /^I compute the list of unique hash key names used in my account$/ do
  @dynamo_db.tables.map { |t| t.hash_key.name }.uniq
end

When /^I compute a map of table name to table status$/ do
  @dynamo_db.tables.inject({}) do |hash, table|
    hash[table.name] = table.status
    hash
  end
end

Then /^the table should have a range key$/ do
  @table.composite_key?.should be_true
  @table.range_key.name.should == "range"
  @table.range_key.type.should == :number
end

When /^I update the provisioning throughput to (\d+) rcu and (\d+) wcu$/ do |rcu, wcu|
  @table.provision_throughput(
    :read_capacity_units => rcu.to_i,
    :write_capacity_units => wcu.to_i)
end

Then /^the table should support (\d+) read capacity units$/ do |rcu|
  @table.read_capacity_units.should == rcu.to_i
end

Then /^the table should support (\d+) write capacity units$/ do |wcu|
  @table.write_capacity_units.should == wcu.to_i
end
