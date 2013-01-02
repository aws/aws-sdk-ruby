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

When /^I create dhcp options$/ do
  @dhcp_options = @ec2.dhcp_options.create(:domain_name => 'example.com')
  @created_dhcp_options << @dhcp_options
end

When /^I create dhcp options with the following configuration:$/ do |table|
  @dhcp_options = @ec2.dhcp_options.create(convert_configuration(table))
  @created_dhcp_options << @dhcp_options
end

Then /^the options should exist$/ do
  @dhcp_options.exists?.should == true
end

Then /^the options should not be assigned to any vpcs$/ do
  @dhcp_options.vpcs.to_a.empty?.should == true
end

When /^I delete the dhcp options$/ do
  @dhcp_options.delete
end

Then /^the options should not exist$/ do
  @dhcp_options.exists?.should == false
end

Then /^the dpcp options should have the following configuration:$/ do |table|
  config = @dhcp_options.configuration
  config.each_pair do |key,value|
    config[key] = value.sort if value.is_a?(Array)
  end
  config.should == convert_configuration(table)
end

When /^I get the dhcp options by id$/ do
  @dhcp_options = @ec2.dhcp_options[@dhcp_options.id]
end

When /^I assign the dhcp options I created to the vpcs$/ do
  @created_vpcs.each do |vpc|
    vpc.dhcp_options = @dhcp_options
  end
end

Then /^the dhcp options vpcs should include the vpcs$/ do
  @dhcp_options.vpcs.to_a.sort_by(&:id).should == @created_vpcs.sort_by(&:id)
end

def convert_configuration table
  config = {}
  table.hashes.each do |hash|
    key = hash['key'].to_sym
    value = hash['value'] == '' ? hash['values'].split(/ /) : hash['value']
    value = value.sort if value.is_a?(Array)
    value = value.to_i if key == :netbios_node_type
    config[key] = value
  end
  config
end
