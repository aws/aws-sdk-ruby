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

When /^I batch put (\d+) items to the table$/ do |count|
  @put = (1..count.to_i).map{|n| { 'id' => n.to_s }}
  @table.batch_put(@put)
end

When /^I batch delete (\d+) items from the table$/ do |count|
  @table.batch_delete((1..count.to_i).to_a.map(&:to_s))
end

Then /^the table should have (\d+) items$/ do |count|
  eventually do
    @table.items.count.should == count.to_i
  end
end

When /^I batch put (\d+) items to each table$/ do |count|

  put = (1..count.to_i).map{|n| { 'id' => n.to_s, 'range' => [n, n+1] }}

  @dynamo_db.batch_write do |batch|
    @tables.each do |table|
      batch.write(table, :put => put)
    end
  end

end

Then /^the tables should have (\d+) items each$/ do |count|
  @tables.each do |table|
    table.items.count.should == count.to_i
  end
end
