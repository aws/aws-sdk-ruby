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

When /^I ask for summary information about my IAM usage$/ do
  @result = @iam.account_summary
end

Then /^the result should be a hash with at least the following symbol keys:$/ do |table|
  @result.should be_a(Hash)
  table.raw.flatten.to_a.each do |key|
    @result.should include(key.to_sym)
    @result[key.to_sym].should be_an(Integer)
  end
end
