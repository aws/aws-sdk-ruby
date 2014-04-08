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

When /^I start (\d+) workflow executions? in the task list "([^"]*)"$/ do |count,task_list|
  (1..count.to_i).each do |n|
    @workflow_execution = @workflow_type.start_execution(:task_list => task_list)
  end
end

Then /^there should eventually be (\d+) workflow execution of the workflow type$/ do |count|
  eventually do
    @workflow_type.count_executions.should ==
      AWS::SimpleWorkflow::Count.new(count.to_i, false)
  end
end

When /^I signal the execution "([^"]*)" with the input "([^"]*)"$/ do |signal_name, input|
  @workflow_execution.signal(signal_name, :input => input)
end

Then /^the execution history should have a "([^"]*)" signal with "([^"]*)"$/ do |signal_name, input|
  signal_event_found = false
  @workflow_execution.history_events.each do |event|
    if
      event.event_type == 'WorkflowExecutionSignaled' and
      event.attributes.signal_name == signal_name and
      event.attributes.input == input
    then
      signal_event_found = true
    end
  end
  signal_event_found.should == true
end

When /^I start a workflow exeuction$/ do
  @workflow_execution = @workflow_type.start_execution
end

Then /^the workflow executions should eventually include the execution$/ do
  eventually do
    @domain.workflow_executions.should include(@workflow_execution)
  end
end

Then /^the workflow type should have (\d+) workflow executions$/ do |count|
  @domain.workflow_executions.count.should ==
    AWS::SimpleWorkflow::Count.new(count.to_i, false)
end

When /^I terminate the workflow execution$/ do
  @workflow_execution.terminate
end

Then /^the workflow execution status should be "([^"]*)"$/ do |status|
  @workflow_execution.status.should == status.to_sym
end

Then /^the workflow execution history should contain a "([^"]*)" event$/ do |event_type|
  eventually do
    event_found = false
    @workflow_execution.events.each do |event|
      event_found = event.event_type == event_type
    end
    event_found.should == true
  end
end

When /^I request to cancel workflow execution$/ do
  @workflow_execution.request_cancel
end

When /^I start (\d+) workflow executions?$/ do |count|
  (1..count.to_i).each do |n|
    @workflow_execution = @workflow_type.start_execution(:input => "execution-#{n}")
  end
end
