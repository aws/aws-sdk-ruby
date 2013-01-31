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

include AWS

Before("@simple_db", "@low_level", "@items") do
  domain_name = "ruby-integration-test-#{Time.now.to_i}"
  create_domain_low_level(:domain_name => domain_name)
end

When /^I replace the values of attribute "([^\"]*)" with "([^\"]*)" on item "([^\"]*)"$/ do |attribute, value, item|
  attribute = eval("\"#{attribute}\"")
  value = eval("\"#{value}\"")
  @sdb_client.put_attributes(:domain_name => @domain_name,
                         :item_name => item,
                         :attributes => [{ :name => attribute,
                                           :value => value,
                                           :replace => true }])
end

Then /^The "([^\"]*)" attribute of item "([^\"]*)" should eventually be "([^\"]*)"$/ do |attribute, item, value|
  attribute = eval("\"#{attribute}\"")
  value = eval("\"#{value}\"")
  @result =
      @sdb_client.get_attributes(:domain_name => @domain_name,
                             :item_name => item,
                             :consistent_read => true,
                             :attribute_names => [attribute])
  @result.attributes.size.should == 1
  @result.attributes.first.name.should == attribute
  @result.attributes.first.value.should == value
end

Given /^I have an item named "([^\"]*)" whose "([^\"]*)" attribute is "([^\"]*)"$/ do |item, attr, value|
  @sdb_client.put_attributes(:domain_name => @domain_name,
                         :item_name => item,
                         :attributes => [{ :name => attr,
                                           :value => value }])
end

When /^I perform the select expression "([^\"]*)"$/ do |expr|
  expr.sub!("{domain_name}", @domain_name)
  @result = @sdb_client.select(:select_expression => expr,
                           :consistent_read => true)
end

Then /^the response should include an item named "([^\"]*)" with:$/ do |item, table|
  item = @result.items.find { |i| i.name == item }
  item.should_not be_nil
  table.hashes.each do |h|
    att = item.attributes.find { |a| a.name == h['attribute_name'] }
    att.should_not be_nil
    att.value.should == h['value']
  end
end

Given /^I have (\d+) items with (\d+) bytes of attribute data each$/ do |n, bytes|
  attribute_count = bytes.to_i / 1024
  attributes = (1..attribute_count).map do |i|
    { :name => "att#{i}",
      :value => (1..1024).inject("") { |m,i| m << (i % 36).to_s(36) } }
  end
  (1..(n.to_i)).each_slice(25) do |items|
    @sdb_client.batch_put_attributes(:domain_name => @domain_name,
                                 :items => items.map do |item|
                                   { :name => "item#{item}",
                                     :attributes => attributes }
                                 end)
  end
end

Then /^the response should include a next token$/ do
  @result.next_token.should be_a(String)
end

Then /^making the same request with the next token should yield another page of results$/ do
  @result = @sdb_client.select(@result.request_options.merge(:next_token => @result.next_token))
  @result.items.should_not be_empty
end

When /^I delete the "([^\"]*)" value of the "([^\"]*)" attribute of item "([^\"]*)"$/ do |value, attribute, item|
  @sdb_client.delete_attributes(:domain_name => @domain_name,
                            :item_name => item,
                            :attributes => [{ :name => attribute,
                                              :value => value }])
end

Then /^the item "([^\"]*)" should eventually not have a "([^\"]*)" attribute$/ do |item, attribute|
  result = @sdb_client.get_attributes(:domain_name => @domain_name,
                                  :item_name => item,
                                  :consistent_read => true)
  result.attributes.map(&:name).should_not include(attribute)
end

Given /^I have (\d+) items with (\d+) single\-valued attributes each$/ do |item_count, attribute_count|
  @items = (1..(item_count.to_i)).map do |i|
    { :name => "item#{i}",
      :attributes => (1..(attribute_count.to_i)).map do |d|
        { :name => "attribute#{d}",
          :value => d.to_s }
      end }
  end
  @sdb_client.batch_put_attributes(:domain_name => @domain_name,
                               :items => @items)
  sleep 0.5
end

When /^I perform a batch delete of all the attributes$/ do
  @sdb_client.batch_delete_attributes(:domain_name => @domain_name,
                                  :items => @items)
end

Then /^the attributes should no longer exist$/ do
  @items.each do |item|
    result = @sdb_client.get_attributes(:domain_name => @domain_name,
                                    :item_name => item[:name],
                                    :consistent_read => true)
    result.attributes.should be_empty
  end
end
