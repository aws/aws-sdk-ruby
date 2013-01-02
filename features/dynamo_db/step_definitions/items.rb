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

When /^I put an item with the following attributes:$/ do |string|
  @result = @item = @table.items.put(eval(string))
end

Then /^the result should be a DynamoDB item$/ do
  @result.should be_a(DynamoDB::Item)
end

Then /^the item should have the following attributes:$/ do |string|
  @item.attributes.to_h(:consistent_read => true).should == eval(string)
end

When /^I put an item with the following arguments:?$/ do |string|
  @result = @item = @table.items.put(*eval(string))
end

Then /^the result should be data for a DynamoDB item$/ do
  @result.should be_a(DynamoDB::ItemData)
end

Then /^the returned data should be as follows:$/ do |string|
  @item.attributes.should == eval(string)
end

When /^I update the item as follows:?$/ do |string|
  @result = @item.instance_eval(string)
end

When /^I delete the item$/ do
  @result = @item.delete
end

When /^I delete the item with the following arguments:?$/ do |string|
  @result = @item.delete(*eval(string))
end

Then /^the item should not exist$/ do
  @item.exists?(:consistent_read => true).should be_false
end

When /^I ask if the DynamoDB item exists$/ do
  @result = @item.exists?(:consistent_read => true)
end

Given /^I ask for the item with the hash key value "([^\"]*)"$/ do |hash|
  @result = @item = @table.items[hash]
end

Given /^I ask for the item with the hash key value "([^\"]*)" and range key value (\d+)$/ do |hash, range|
  @result = @item = @table.items.at(hash, range.to_i)
end

Given /^I create (\d+) DynamoDB items$/ do |n|
  (1..(n.to_i)).each do |i|
    if @table.hash_key.type == :string
      @table.items.put(@table.hash_key.name => "item#{i}")
    else
      @table.items.put(@table.hash_key.name => i)
    end
  end
end

When /^I list DynamoDB items with a limit of (\d+) and batch_size of (\d+)$/ do |limit, batch|
  @table.items.each(:limit => limit.to_i, :batch_size => batch.to_i) { |i| }
end

When /^I put an item with an image as a binary attribute$/ do
  File.open(File.dirname(__FILE__) + '/img.jpg', 'rb') do |file|
    data = AWS::DynamoDB::Binary.new(file.read)
    @item = @table.items.put('id' => 'image', 'data' => data)
  end
end

Then /^the item's binary attribute should match the image\.$/ do
  File.open(File.dirname(__FILE__) + '/img.jpg', 'rb') do |file|
    @item.attributes['data'].should eq(file.read)
  end
end
