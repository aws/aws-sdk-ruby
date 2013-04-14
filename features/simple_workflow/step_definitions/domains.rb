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

require 'uuidtools'

When /^I register a simple workflow domain$/ do
  name = "ruby-integration-test-#{UUIDTools::UUID.random_create}"
  @domain = @swf.domains.create(name, 1)
  @registered_domains << @domain
end

When /^I deprecate the simple workflow domain$/ do
  @domain.deprecate
end

Then /^the simple workflow domain should be deprecated$/ do
  @domain.deprecated?.should == true
end

Then /^the domain should be in the list of registered domains$/ do
  @swf.domains.should include(@domain)
end

When /^I get the simple workflow domain by name$/ do
  @domain = @swf.domains[@domain.name]
end

When /^I enumerate deprecated domains$/ do
  @swf.domains.to_a
end

Given /^I register a domain with the name like "([^"]*)"$/ do |name|
  @domain = @swf.domains.register(name)
end

When /^I enumerate domains in reverse order$/ do
  @domains = @swf.domains.reverse_order.to_a
end

Then /^the domain names should be like:$/ do |table|
  names = table.hashes.collect{|h| h['NAME'] }
  @domains.collect(&:name).should == names
end

Then /^the simple worfklow domain should be in the list of deprecated domains$/ do
  eventually do
    @swf.domains.deprecated.should include(@domain)
  end
end

Then /^the simple workflow domain status should be "([^"]*)"$/ do |status|
  @domain.status.should.to_s == status
end

Then /^the simple workflow domain retention period should be "([^"]*)"$/ do |period|
  @domain.retention_period.to_s.should == period
end
