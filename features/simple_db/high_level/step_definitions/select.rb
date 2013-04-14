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

When /^I select items using the following attribute conditions:$/ do |table|
  # This would work:
  # @result = @domain.items.where(table.rows_hash).to_a
  # but hash ordering makes the testing comparison hard

  items = @domain.items
  table.raw.each do |(name, value)|
    condition = {}
    condition[name] = value
    items = items.where(condition)
  end
  @result = items.to_a
end

When /^a select should have been performed like:$/ do |table|
  select_requests = @http_handler.requests_made.select do |req|
    action = req.params.find { |p| p.name == "Action" } and
        action.value == "Select"
  end

  select_requests.map do |req|
    if expr = req.params.find { |p| p.name == "SelectExpression" }
      expr.value
    end
  end.compact.should match_select_expression(table)
end

When /^I select items using the following conditions and substitutions:$/ do |table|
  items = @domain.items
  table.hashes.each do |condition|
    items = items.where(condition["CONDITION"], eval(condition["SUBSTITUTION"]))
  end
  @result = items.to_a
end

When /^I select items where "([^\"]*)" is between "([^\"]*)" and "([^\"]*)"$/ do |att, low, high|
  condition = {}
  condition[att] = low..high
  @result = @domain.items.where(condition).to_a
end

When /^I select items using the following named substitutions:$/ do |table|
  condition = table.rows_hash["CONDITION"]
  substitutions = Hash[table.rows_hash.reject { |(k,v)| k == "CONDITION" }]
  @result = @domain.items.where(condition, substitutions).to_a
end

When /^I select items ordering by "([^\"]*)" (descending|ascending)$/ do |column, dir|
  @result = @domain.items.order(column, dir == "descending" ? :desc : :asc).to_a
end

When /^I select all items with a limit of (\d+)$/ do |limit|
  @result = @domain.items.limit(1).to_a
end

When /^I select all attributes$/ do
  @result = []
  @domain.items.select(:consistent_read => true) { |data| @result << data }
end

Then /^the result should contain the following attribute data:$/ do |table|
  expected = table.hashes.inject({}) do |m, hash|
    item_data = (m[hash["item"]] ||= {})
    values = (item_data[hash["attribute"]] ||= [])
    values << hash["value"]
    m
  end
  @result.map { |data| data.name }.sort.should == expected.keys.sort
  @result.each do |data|
    data.attributes.should == expected[data.name]
  end
end

RSpec::Matchers.define :match_select_expression do |table|

  match do |expressions|
    matched = expressions.select do |expr|
      table.hashes.all? do |part|
        value = Regexp.escape(part["VALUE"])
        case part["PART"]
        when "condition"
          expr =~ /WHERE #{value}\s*(ORDER.*?)?(LIMIT.*)?$/
        when "output_list"
          expr =~ /^SELECT #{value} FROM/
        when "sort_instructions"
          expr =~ /ORDER BY #{value}\s*(LIMIT.*)?$/
        when "limit"
          expr =~ /LIMIT #{value}$/
        end
      end
    end
    matched.length > 0
  end

  failure_message_for_should do |expressions|
    "expected the description above to match any one of these expressions: #{expressions.inspect}"
  end

  failure_message_for_should_not do |expressions|
    "the table above matched the following expression(s):#{expressions.join}"
  end

end

Given /^I have (\d+) items in a domain$/ do |count|
  ('0'..((count.to_i-1).to_s)).each do |n|
    @domain.items[n].attributes.add('foo' => 'bar')
  end
end

When /^I enumerate items with a limit of (\d+) and batch size of (\d+)$/ do |limit, batch_size|
  @domain.items.each(
    :limit => limit,
    :batch_size => batch_size,
    :consistent_read => true
  ) {|i|}
end

When /^I select item data with a limit of (\d+) and batch size of (\d+)$/ do |limit, batch_size|
  @domain.items.select(:all,
    :limit => limit,
    :batch_size => batch_size,
    :consistent_read => true
  ) {|i|}
end

