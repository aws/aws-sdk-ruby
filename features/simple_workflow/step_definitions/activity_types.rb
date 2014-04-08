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

When /^I register a activity type named "([^"]*)" with the version "([^"]*)" with:$/ do |name, version, table|
  options = {}
  table.rows.each do |row|
    key = row.first.to_sym
    value = row.last =~ /^\d+$/ ? row.last.to_i : row.last
    options[key] = value
  end
  @activity_type = @domain.activity_types.register(name,version, options)
end

Given /^I get the activity type by name and version$/ do
  name = @activity_type.name
  version = @activity_type.version
  @activity_type = @domain.activity_types[name,version]
end

Then /^the activity type should have the following attributes$/ do |table|
  AWS.memoize do
    table.rows.each do |row|
      @activity_type.send(row.first).to_s.should == row.last.to_s
    end
  end
end

Given /^I register (\d+) activity types?$/ do |count|
  (1..count.to_i).each do |n|
    @activity_type = @domain.activity_types.register("name-#{n}", "version-#{n}",
      :default_task_heartbeat_timeout => 3000,
      :default_task_schedule_to_close_timeout => 5000,
      :default_task_schedule_to_start_timeout => 1000,
      :default_task_start_to_close_timeout => 1000,
      :default_task_list => 'default-task-list',
      :description => 'description')
  end
end

Then /^the activity type collection should include the activity type$/ do
  eventually do
    @domain.activity_types.should include(@activity_type)
  end
end

When /^I enumerate activity types with a batch_size of (\d+) and limit of (\d+)$/ do |s, l|
  @domain.activity_types.each(:batch_size => s.to_i, :limit => l.to_i) {|t|}
end

When /^I deprecate the activity type$/ do
  @activity_type.deprecate
end

Then /^deprecated activity types should include the activity type$/ do
  eventually do
    @domain.activity_types.deprecated.should include(@activity_type)
  end
end

When /^I access the following activity attributes twice:$/ do |table|
  table.rows.each do |row|
    attr_name = row.first
    @activity_type.send(attr_name)
    @activity_type.send(attr_name)
  end
end

When /^I access the following attributes:$/ do |table|
  table.rows.each do |row|
    @activity_type.send(row.first)
  end
end

Then /^there should eventually be (\d+) activity types$/ do |count|
  eventually do
    @domain.activity_types.count.should == count.to_i
  end
end
