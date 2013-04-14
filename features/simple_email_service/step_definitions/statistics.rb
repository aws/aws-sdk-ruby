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

When /^I ask for the statistics$/ do
  @stats = @result = @ses.statistics
end

Then /^each member should have the following keys:$/ do |table|
  table.raw.flatten.each do |member|
    @stats.all? do |stats|
      stats.should have_key(member.to_sym)
      stats[member.to_sym].should be_an(Integer)
    end
  end
end

Then /^each member should have a sent timestamp$/ do
  @stats.all? {|stat| stat[:sent].should be_a(Time) }
end
