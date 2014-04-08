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

Then /^the lifecycle configuration should have (\d+) rules$/ do |count|
  @bucket.lifecycle_configuration.rules.size.should == count.to_i
end

When /^I add a rule with the prefix "([^"]*)" that expires in (\d+) days$/ do |prefix,days|
  @rule = @bucket.lifecycle_configuration.add_rule(prefix, days.to_i)
end

When /^I update the lifecycle configuration$/ do
  @bucket.lifecycle_configuration.update
end

When /^I update the lifecycle configuration like:$/ do |string|
  eval(string)
end

Then /^the lifecycle configuration should have the following rules:$/ do |table|

  rule_expectations = table.hashes.map {|h| {
    :id => h['ID'], :prefix => h['PREFIX'], :status => h['STATUS'],
    :exp => (Integer(h['EXP']) rescue Date.parse(h['EXP']) rescue nil) || 0,
    :glacier => (Integer(h['GLACIER']) rescue Date.parse(h['GLACIER']) rescue nil) || 0
  }}

  rules = @bucket.lifecycle_configuration.rules.map {|r| {
    :id => r.id, :prefix => r.prefix, :status => r.status,
    :exp => r.expiration_time || 0, :glacier => r.glacier_transition_time || 0
  }}

  rules.should == rule_expectations

end

When /^I remove the rule with the id "([^"]*)"$/ do |rule_id|
  @bucket.lifecycle_configuration.remove_rule(rule_id)
end
