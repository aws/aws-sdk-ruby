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

Then /^the decision task should be nil$/ do
  @decision_task.should == nil
end

Then /^the count of decision tasks for "([^"]*)" should be (\d+)$/ do |task_list,count|
  eventually do
    @domain.decision_tasks.count(task_list).should ==
      AWS::SimpleWorkflow::Count.new(count.to_i, false)
  end
end
