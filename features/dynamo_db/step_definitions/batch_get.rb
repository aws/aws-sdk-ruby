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


Then /^I should be able to batch get the same (\d+) items$/ do |count|
  items = (1..count.to_i).map(&:to_s) # item ids
  got = @table.batch_get(:all, items).to_a
  eventually do # allow for eventual consistency
    got.sort_by{|i| i["id"] }.should eq(@put.sort_by{|i| i["id"] })
  end
end

Then /^I should be able to batch get the same (\d+) items consistently$/ do |count|
  items = (1..count.to_i).map(&:to_s) # item ids
  got = @table.batch_get(:all, items, :consistent_read => true).to_a
  got.sort_by{|i| i["id"] }.should eq(@put.sort_by{|i| i["id"] })
end

