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

Given /^I use "([^"]*)" as the delimiter$/ do |delimiter|
  @delimiter = delimiter
end

Given /^I use "([^"]*)" as the prefix$/ do |prefix|
  @prefix = prefix
end

Given /^I choose to not append the delimiter$/ do
  @append = false
end

When /^I access the bucket as a tree$/ do

  options = {}
  options[:prefix] = @prefix unless @prefix.nil?
  options[:delimiter] = @delimiter unless @delimiter.nil?
  options[:append] = @append unless @append.nil?

  @leaves = []
  @branches = []
  @bucket.as_tree(options).children.each do |node|
    if node.leaf?
      @leaves << node
    else
      @branches << node
    end
  end

end

Then /^I should receive leaf nodes with the following keys:$/ do |table|
  keys = @leaves.collect{|leaf| leaf.key }
  keys.should == table.hashes.collect{|hash| hash['key'] }
end

Then /^I should receive branch nodes with the following prefixes:$/ do |table|
  prefixes = @branches.collect{|branch| branch.prefix }
  prefixes.should == table.hashes.collect{|hash| hash['prefix'] }
end

Then /^the branch prefixed "([^"]*)" should have leaves with keys:$/ do |prefix, table|
  keys = []
  @branches.find{|branch| branch.prefix == prefix }.children.each do |node|
    keys << node.key if node.leaf?
  end
  keys.should == table.hashes.collect{|hash| hash['key'] }
end
