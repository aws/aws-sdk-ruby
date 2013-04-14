# encoding: UTF-8
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

Before("@simple_db", "@high_level", "@items") do
  create_domain_high_level
end

When /^I get the "([^\"]*)" attribute for "([^\"]*)"$/ do |attr_name, item_name|
  @attribute = @domain.items[item_name].attributes[attr_name]
end

Then /^the attribute should have no values$/ do
  @attribute.to_a.should == []
end

When /^I add the value "([^\"]*)" to the "([^\"]*)" attribute of "([^\"]*)"$/ do |value, attribute_name, item_name|
  value = eval("\"#{value}\"")
  @domain.items[item_name].attributes[attribute_name].add(value)
end

Then /^the "([^\"]*)" attribute of "([^\"]*)" item should eventually be "([^\"]*)"$/ do |attribute, item_name, value|
  value = eval("\"#{value}\"")
  eventually(10) { @domain.items[item_name].attributes[attribute].values.should == [value] }
end

Then /^the "([^\"]*)" attribute of "([^\"]*)" item should eventually be:$/ do |attribute_name, item_name, table|

  attribute = @domain.items[item_name].attributes[attribute_name]

  sdb_values = []
  attribute.each(:consistent_read => true) do |value|
    sdb_values << value
  end

  table_values = table.hashes.collect{|hash| hash['value'] }.sort
  table_values.sort.should == sdb_values.sort

end

When /^I add the following values to the "([^\"]*)" attribute of "([^\"]*)"$/ do |attribute_name, item_name, table|
  values = table.hashes.collect{|hash| hash['value'] }
  @domain.items[item_name].attributes[attribute_name].add(values)
end

When /^I set the "([^\"]*)" attribute of "([^\"]*)" to "([^\"]*)":$/ do |attribute_name,item_name,value|
  @domain.items[item_name].attributes[attribute_name].set(value)
end

Then /^the "([^\"]*)" item should eventually have attributes named:$/ do |item_name,table|

  attributes = @domain.items[item_name].attributes

  names = []
  attributes.each(:consistent_read => true) do |attribute|
    names << attribute.name
  end

  expected_names = table.hashes.collect{|hash| hash['name'] }

  names.sort.should == expected_names.sort

end

When /^I delete the "([^\"]*)" item$/ do |item_name|
  @domain.items[item_name].delete
end

Then /^the "([^\"]*)" item should eventually have no attributes$/ do |item_name|

  found = []
  @domain.items[item_name].attributes.each(:consistent_read => true) do |attribute|
    found << attribute
  end
  found.should == []

end

When /^I (add|set) the following attributes to "([^\"]*)"$/ do |add_or_set, item_name, table|

  attributes_hash = {}
  table.hashes.each do |hash|
    attributes_hash[hash['name']] ||= []
    attributes_hash[hash['name']] << hash['value']
  end

  @domain.items[item_name].attributes.send(add_or_set, attributes_hash)

end

Then /^the domain should eventually have the following items:$/ do |table|

  item_names = []
  @domain.items.each(:consistent_read => true) do |item|
    item_names << item.name
  end

  expected_item_names = table.hashes.collect{|hash| hash['name'] }

  item_names.sort.should == expected_item_names.sort

end

Then /^the attributes for "([^\"]*)" should eventually be:$/ do |item_name, table|

  collection = @domain.items[item_name].attributes

  attributes = []
  collection.each_value(:consistent_read => true) do |attr_name, attr_value|
    attributes << { 'name' => attr_name, 'value' => attr_value }
  end

  table.diff!(attributes)

end

Then /^I delete the attributes from "([^\"]*)" named:$/ do |item_name, table|
  attribute_names = table.hashes.collect{|hash| hash['name'] }
  @domain.items[item_name].attributes.delete(attribute_names)
end

When /^I ask for the data for "([^\"]*)"$/ do |item|
  @result = @domain.items[item].data(:consistent_read => true)
end

Then /^the resulting ItemData should contain the following attribute data:$/ do |table|
  table.hashes.each do |hash|
    @result.attributes.should have_key(hash["name"])
    @result.attributes[hash["name"]].should include(hash["value"])
  end
end

When /^I delete the following attribute values from "([^\"]*)":$/ do |item_name, table|
  delete_opts = table.hashes.inject({}) do |hash, h|
    (hash[h["name"].to_sym] ||= []) << h["value"]
    hash
  end
  @domain.items[item_name].attributes.
    delete(delete_opts)
end

When /^I delete the following attribute values from "([^\"]*)" if "([^\"]*)" is "([^\"]*)":$/ do |item_name, expect_att, expect_value, table|
  delete_opts = table.hashes.inject({}) do |hash, h|
    (hash[h["name"].to_sym] ||= []) << h["value"]
    hash
  end
  if !expect_att.to_s.empty?
    delete_opts[:if] = Hash[[[expect_att.to_sym, expect_value]]]
  end
  begin
    @domain.items[item_name].attributes.
      delete(delete_opts)
  rescue Errors::ClientError => e
    @error = e
  end
end

When /^I delete the following attribute values from "([^\"]*)" if "([^\"]*)" has no value:$/ do |item_name, expect_att, table|
  delete_opts = table.hashes.inject({}) do |hash, h|
    (hash[h["name"].to_sym] ||= []) << h["value"]
    hash
  end
  if !expect_att.to_s.empty?
    delete_opts[:unless] = expect_att.to_sym
  end
  begin
    @domain.items[item_name].attributes.
      delete(delete_opts)
  rescue Errors::ClientError => e
    @error = e
  end
end

Then /^I should get a "([^\"]*)" error$/ do |code|
  @error.should be_a(SimpleDB::Errors::const_get(code))
end

When /^I add the value "([^\"]*)" to the "([^\"]*)" attribute of "([^\"]*)" if "([^\"]*)" is "([^\"]*)"$/ do |value, attribute, item_name, expect_att, expect_value|
  begin
    @domain.items[item_name].attributes[attribute].
      add(value, :if => Hash[[[expect_att, expect_value]]])
  rescue Errors::ClientError => e
    @error = e
  end
end

When /^I add the value "([^\"]*)" to the "([^\"]*)" attribute of "([^\"]*)" unless "([^\"]*)" has a value$/ do |value, attribute, item_name, expect_att|
  begin
    @domain.items[item_name].attributes[attribute].
      add(value, :unless => expect_att)
  rescue Errors::ClientError => e
    @error = e
  end
end

When /^I set the "([^\"]*)" attribute of "([^\"]*)" to "([^\"]*)" if "([^\"]*)" is "([^\"]*)":$/ do |attribute, item_name, value, expect_att, expect_value|
  begin
    @domain.items[item_name].attributes[attribute].
      set(value, :if => Hash[[[expect_att, expect_value]]])
  rescue Errors::ClientError => e
    @error = e
  end
end

When /^I set the "([^\"]*)" attribute of "([^\"]*)" to "([^\"]*)" unless "([^\"]*)" has a value:$/ do |attribute, item_name, value, expect_att|
  begin
    @domain.items[item_name].attributes[attribute].
      set(value, :unless => expect_att)
  rescue Errors::ClientError => e
    @error = e
  end
end

When /^I put the following attributes to "([^\"]*)"$/ do |item_name, table|

  replace = {}
  add = {}

  table.hashes.each do |hash|
    name = hash['name']
    value = hash['value']
    if hash['replace'] == 'yes'
      replace[name] ||= []
      replace[name] << value
    else
      add[name] ||= []
      add[name] << value
    end
  end

  attributes = @domain.items[item_name].attributes
  attributes.put(:add => add, :replace => replace)

end
