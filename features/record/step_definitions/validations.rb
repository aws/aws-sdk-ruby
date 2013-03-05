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

When /^I create a model instance$/ do
  @inst = ExampleClass.new
end

Then /^the instance (should|should not) be valid$/ do |should|
  @inst.valid?
  if should == "should"
    @inst.errors.should == {}
  end
  @inst.valid?.should send(should == "should" ? :be_true : :be_false)
end

Then /^the errors should include:$/ do |table|
  table.hashes.each do |hash|
    @inst.errors.should have_key(hash["attribute"].to_sym)
    @inst.errors[hash["attribute"].to_sym].should include(hash["message"])
  end
end

When /^I create a model instance with the following values:$/ do |table|
  opts = {}
  table.hashes.each do |hash|
    (opts[hash["attribute"].to_sym] ||= []) << hash["value"]
  end

  # flatten single values
  opts.each_pair do |k,v|
    if v.length == 1
      opts[k] = v.first
    end
  end

  @inst = ExampleClass.new(opts)
end
