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

Given /^I create a security group$/ do
  name = "ruby-integration-test-#{Time.now.to_i}"
  step "I create a security group named \"#{name}\""
end

Given /^I create a security group named "([^\"]*)"$/ do |name|
  @security_group = @ec2.security_groups.create(name)
  @created_security_groups << @security_group
end

Given /^I create (\d+) security groups$/ do |count|
  count.to_i.times do |i|
    name = "ruby-integration-test-#{Time.now.to_i}-#{i}"
    step "I create a security group named \"#{name}\""
  end
end

Given /^I create (\d+) vpc security groups$/ do |count|
  @security_groups = []
  count.to_i.times do |n|
    name = "integ-test-#{Time.now.to_i}-#{n}"
    @security_groups << @vpc.security_groups.create(name)
  end
  @created_security_groups += @security_groups
end

Then /^I delete the security group$/ do
  @security_group.delete
end

Then /^The security group should be in the list$/ do
  @ec2.security_groups.should include(@security_group)
end

Then /^The security group should not be in the list$/ do
  @ec2.security_groups.should_not include(@security_group)
end

Given /^I create the following security groups:$/ do |table|
  table.hashes.each do |row|
    options = {}
    options[:description] = row['description'] if row['description']
    security_group = @ec2.security_groups.create(row['name'], options)
    @created_security_groups << security_group
  end
end

When /^I get a list of security groups$/ do
  @security_groups = @ec2.security_groups.to_a
end

Then /^The following security groups should be in the list$/ do |table|
  names = table.hashes.collect{|row| row['name'] }
  names.all? do |name|
    @security_groups.collect{|sg| sg.name }.include?(name)
  end
end

When /^I get a list of security groups filtered like:$/ do |expression|
  @security_groups = eval(expression)
end

Then /^The following security groups should not be in the list$/ do |table|
  names = table.hashes.collect{|row| row['name'] }
  names.none? do |name|
    @security_groups.collect{|sg| sg.name }.include?(name)
  end
end

When /^I get the security group by name "([^\"]*)"$/ do |name|
  @result = @security_group = @ec2.security_groups.filter('group-name', name).first
end

Then /^The security group should have the description "([^\"]*)"$/ do |desc|
  @security_group.description.should == desc
end

Then /^The security group should have an owner id$/ do
  @security_group.owner_id.should_not be_nil
end

def ip_ranges_from_table table
  table.hashes.select{|r| r['type'] == 'ip_range'}.collect{|r| r['value'] }
end

def security_groups_from_table table, owner_id
  names = table.hashes.select{|r| r['type'] == 'group'}.collect{|r| r['value'] }
  @ec2.security_groups.filter('group-name', *names).to_a
end

When /^I authorize "([^\"]*)" over port (\d+) for:$/ do |protocol, port, table|
  ip_ranges = ip_ranges_from_table(table)
  groups = security_groups_from_table(table, @security_group.owner_id)
  @security_group.authorize_ingress(protocol, port, *(ip_ranges + groups))
end

Then /^The security group should allow "([^\"]*)" over port (\d+) for:$/ do |protocol, port, table|

  permissions = @security_group.ip_permissions
  ip_ranges = ip_ranges_from_table(table)
  groups = security_groups_from_table(table, @security_group.owner_id)
  permissions.any? do |p|
    p.protocol.to_s == protocol and
    p.port_range.first.to_s == port and
    p.ip_ranges == ip_ranges and
    p.groups == groups
  end
end

Then /^the result should be an security group object$/ do
  @result.should be_an(EC2::SecurityGroup)
end

When /^I ask if the security group exists$/ do
  @result = @security_group.exists?
end

When /^I get the security group "([^\"]*)" by ID$/ do |id|
  @result = @security_group = @ec2.security_groups[id]
end

When /^I get a list of all authorized ingresses$/ do
  @ec2.security_groups.map(&:ip_permissions).flatten
end

When /^I compute a hash of security group name to description$/ do
  @ec2.security_groups.inject({}) do |hash, sg|
    hash[sg.name] = sg.description
    hash
  end
end
