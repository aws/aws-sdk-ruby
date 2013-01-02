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

When /^I scan the table as follows:$/ do |string|
  @result = @table.items.instance_eval(string).select.to_a
end

Then /^the result should include an item with the following attributes:$/ do |string|
  @result.map { |data| data.attributes }.should include(eval(string))
end

When /^I count the items in the table with the following conditions:$/ do |string|
  @result = @table.items.instance_eval(string).count
end
