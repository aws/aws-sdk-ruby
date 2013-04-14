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

When /^I set the queue policy$/ do
  @policy = AWS::SQS::Policy.new
  @policy.allow(
    :actions => :any,
    :principles => ["arn:aws:iam::681294939609:root"],
    :resources => @queue)
  @queue.policy = @policy
end

Then /^the queue policy should match$/ do
  @queue.policy.to_h.should == @policy.to_h
end
