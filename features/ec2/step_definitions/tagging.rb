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

Given /^I call the "([^\"]*)" resource$/ do |var|
  @resource = instance_variable_get("@#{var}")
  @collection = @ec2.send("#{var}s")
end

When /^I tag the resource "([^\"]*)"$/ do |tag_key|
  @resource.tags << tag_key
  @tag = EC2::Tag.new(@resource, tag_key)
  @tags_created << @tag
end

Then /^I should find the resource by its tag$/ do
  @collection.tagged(@tag.key).should include(@resource)
end

When /^I tag the resource "([^\"]*)" with the value "([^\"]*)"$/ do |key, value|
  @resource.tags[key] = value
  @tag = EC2::Tag.new(@resource, key)
  @tags_created << @tag
end

Then /^the resource tag "([^\"]*)" should eventually have value "([^\"]*)"$/ do |key, value|
  eventually { @resource.tags[key].should == value }
end

Then /^I(?: should)? find the resource by "([^\"]*)" and "([^\"]*)"$/ do |key, value|
  @collection.tagged(key).tagged_values(value).should include(@resource)
end

Then /^I delete the resource tag "([^\"]*)"$/ do |key|
  @resource.tags.delete(key)
end

Then /^I clear the resource tags$/ do
  @resource.tags.clear
end

Then /^the resource tag "([^\"]*)" should eventually have no value$/ do |key|
  eventually { @resource.tags[key].should be_nil }
end

Then /^the resource should eventually have no tags$/ do
  eventually { @resource.tags.should be_empty }
end

Then /^I should find the resource through the tags collection by "([^\"]*)" and "([^\"]*)"$/ do |key, value|
  tags_with_key = @ec2.tags.filter("key", key)
  tags_with_key.map { |t| t.value }.should include(value)
  tags_with_value = tags_with_key.filter("value", value)
  tags_with_value.map { |t| t.resource }.should include(@resource)
end

Then /^the resource tag collection should include "([^\"]*)" with value "([^\"]*)"$/ do |key, value|
  @resource.tags.should include(key)
  @resource.tags[key].should == value
end

Then /^the resource should be taggable$/ do
  eventually { @resource.exists?.should be(true) }
  step 'I tag the resource "ruby-test-1"'
  step 'I should find the resource by its tag'
  step 'I tag the resource "ruby-test-2-key" with the value "ruby-test-2-value"'
  step 'the resource tag "ruby-test-2-key" should eventually have value "ruby-test-2-value"'
  step 'I should find the resource by "ruby-test-2-key" and "ruby-test-2-value"'
  step 'I should find the resource through the tags collection by "ruby-test-2-key" and "ruby-test-2-value"'
  step 'I delete the resource tag "ruby-test-2-key"'
  step 'the resource tag "ruby-test-2-key" should eventually have no value'
  step 'I clear the resource tags'
  step 'the resource should eventually have no tags'
end

Then /^the resource should memoize tags properly$/ do
  eventually { @resource.exists?.should be_true }
  step 'I tag the resource "ruby-test-1-key" with the value "ruby-test-1-value"'
  step 'the resource tag "ruby-test-1-key" should eventually have value "ruby-test-1-value"'
  step 'I start a memoization block'
  step 'I find the resource by "ruby-test-1-key" and "ruby-test-1-value"'
  step 'the resource tag collection should include "ruby-test-1-key" with value "ruby-test-1-value"'
  And('no requests should have been made like:',
      table([%w(TYPE  NAME   VALUE),
             %w(param Action DescribeTags)]))
end

When /^I compute the set of all tag values$/ do
  require 'set'
  @ec2.tags.inject(Set.new) do |set, tag|
    set << tag.value
  end
end

When /^I list all tagged resources grouped by the tag values of "([^\"]*)"$/ do |key|
  @ec2.tags.inject({}) do |hash, tag|
    hash[(tag.value if tag.key == key)] = tag.resource
    hash
  end
end
