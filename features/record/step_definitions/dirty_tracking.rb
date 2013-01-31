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

Then /^the following attributes should be changed:$/ do |table|
  table.hashes.collect{|h| h['attribute'] }.sort.should == @inst.changed.sort
end

Then /^the instance should have no changes$/ do
  @inst.changed.should == []
end

When /^I set the model instance "([^"]*)" to "([^"]*)"$/ do |method, value|
  @inst.send("#{method}=", value)
end

When /^I call save on the model instance$/ do
  begin
    @inst.save
  rescue AWS::DynamoDB::Errors::ResourceNotFoundException
    # table does not exist
  end
end
