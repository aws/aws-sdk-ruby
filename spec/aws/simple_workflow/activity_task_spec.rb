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

require 'spec_helper'

module AWS
  class SimpleWorkflow
    describe DecisionTaskCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_workflow_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:data) {{
        'taskToken' => 'task-token',
        'activityId' => 'activity-id',
        'startedEventId' => 4,
        'input' => 'input',
        'activityType' => { 'name' => 'name', 'version' => 'version' },
        'workflowExecution' => { 'workflowId' => 'wid', 'runId' => 'rid' },
      }}

      let(:task) { ActivityTask.new(domain, data) }

      context '#domain' do

        it 'returns the domain' do
          task.domain.should == domain
          task.config.should == config
        end

      end

      context 'attributes from data' do

        it 'returns the task token' do
          task.task_token.should == 'task-token'
          task.activity_id.should == 'activity-id'
          task.started_event_id.should == 4
          task.input.should == 'input'
          task.activity_type.should == domain.activity_types['name','version']
          task.workflow_execution.should == domain.workflow_executions['wid','rid']
        end

      end

      context '#record_heartbeat!' do

        let(:response) { client.stub_for(:record_activity_task_heartbeat) }

        it 'calls record activity task heartbeat on the client' do
          client.should_receive(:record_activity_task_heartbeat).with(
            :task_token => task.task_token
          ).and_return(response)
          task.record_heartbeat!
        end

        it 'accepts a details option' do
          client.should_receive(:record_activity_task_heartbeat).with(
            :task_token => task.task_token,
            :details => 'details'
          ).and_return(response)
          task.record_heartbeat! :details => 'details'
        end

        it 'raises a CancelRequestedError is the response indicates to' do
          response.data['cancelRequested'] = true
          lambda {
            task.record_heartbeat!
          }.should raise_error(ActivityTask::CancelRequestedError)
        end

      end

      context '#complete!' do

        it 'calls respond_activity_task_completed on the client' do
          client.should_receive(:respond_activity_task_completed).with(
            :task_token => task.task_token)
          task.complete!
        end

        it 'accepts a result' do
          client.should_receive(:respond_activity_task_completed).with(
            :task_token => task.task_token,
            :result => 'result')
          task.complete! :result => 'result'
        end

      end

      context '#cancel!' do

        it 'calls respond_activity_task_canceled on the client' do
          client.should_receive(:respond_activity_task_canceled).with(
            :task_token => task.task_token)
          task.cancel!
        end

        it 'accepts details' do
          client.should_receive(:respond_activity_task_canceled).with(
            :task_token => task.task_token, :details => 'details')
          task.cancel! :details => 'details'
        end

      end

      context '#fail!' do

        it 'calls respond_activity_task_failed on the client' do
          client.should_receive(:respond_activity_task_failed).with(
            :task_token => task.task_token)
          task.fail!
        end

        it 'accepts details' do
          client.should_receive(:respond_activity_task_failed).with(
            :task_token => task.task_token,
            :reason => 'reason',
            :details => 'details')
          task.fail! :reason => 'reason', :details => 'details'
        end

      end

      context '#responded?' do

        it 'starts out as false' do
          task.responded?.should == false
        end

        it 'returns true after calling complete!' do
          task.responded?.should == false
          task.complete!
          task.responded?.should == true
        end

        it 'returns true after calling cancel!' do
          task.responded?.should == false
          task.cancel!
          task.responded?.should == true
        end

        it 'returns true after calling fail!' do
          task.responded?.should == false
          task.fail!
          task.responded?.should == true
        end

      end

    end
  end
end
