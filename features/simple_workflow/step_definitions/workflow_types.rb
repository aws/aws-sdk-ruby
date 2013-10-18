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

When /^I register a workflow type named "([^"]*)" with the version "([^"]*)" with:$/ do |name, version, table|
  options = {}
  table.rows.each do |row|
    key = row.first.to_sym
    value = row.last =~ /^\d+$/ ? row.last.to_i : row.last
    options[key] = value
  end
  @workflow_type = @domain.workflow_types.register(name,version, options)
end

Given /^I get the workflow type by name and version$/ do
  name = @workflow_type.name
  version = @workflow_type.version
  @workflow_type = @domain.workflow_types[name,version]
end

Then /^the workflow type should have the following attributes$/ do |table|
  AWS.memoize do
    table.rows.each do |row|
      @workflow_type.send(row.first).to_s.should == row.last.to_s
    end
  end
end

Given /^I register (\d+) workflow types?$/ do |count|
  (1..count.to_i).each do |n|
    @workflow_type = @domain.workflow_types.register("name-#{n}", "version-#{n}",
      :default_child_policy => :terminate,
      :default_execution_start_to_close_timeout => 3800,
      :default_task_start_to_close_timeout => 3700,
      :default_task_list => 'default-task-list',
      :description => 'description')
  end
end

Then /^the workflow type collection should include the workflow type$/ do
  eventually do
    @domain.workflow_types.should include(@workflow_type)
  end
end

When /^I enumerate workflow types with a batch_size of (\d+) and limit of (\d+)$/ do |s, l|
  @domain.workflow_types.each(:batch_size => s.to_i, :limit => l.to_i) {|t|}
end

When /^I deprecate the workflow type$/ do
  @workflow_type.deprecate
end

Then /^deprecated workflow types should include the workflow type$/ do
  eventually do
    @domain.workflow_types.deprecated.should include(@workflow_type)
  end
end

When /^I access the following attributes twice:$/ do |table|
  table.rows.each do |row|
    attr_name = row.first
    @workflow_type.send(attr_name)
    @workflow_type.send(attr_name)
  end
end

When /^I access the following attributes:$/ do |table|
  table.rows.each do |row|
    @workflow_type.send(row.first)
  end
end

When /^I enumerate the workflow types with a batch size of (\d+) and limit of (\d+)$/ do |batch_size, limit|
  @domain.workflow_types.each(:batch_size => batch_size, :limit => limit)
end

Then /^there should eventually be (\d+) workflow types$/ do |count|
  eventually do
    @domain.workflow_types.count.should == count.to_i
  end
end
