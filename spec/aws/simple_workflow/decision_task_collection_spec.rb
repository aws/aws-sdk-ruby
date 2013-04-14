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

      let(:tasks) { DecisionTaskCollection.new(domain) }

      context '#count' do

        let(:response) { client.stub_for(:count_pending_decision_tasks) }

        before(:each) do
          response.data['count'] = 5
          response.data['truncated'] = true
          client.stub(:count_pending_decision_tasks).and_return(response)
        end

        it 'calls #count_pending_decision_tasks on the client' do
          client.should_receive(:count_pending_decision_tasks).with(
            :domain => domain.name,
            :task_list => { :name => 'task-list' }
          ).and_return(response)
          tasks.count('task-list')
        end

        it 'returns the count as an integer' do
          tasks.count('task-list').should == Count.new(5, true)
        end

      end

      context '#poll_for_single_task' do

        let(:task_list) { 'task-list' }

        let(:method) { :poll_for_decision_task }

        let(:response) { client.stub_for(method) }

        let(:request_opts) {{
          :domain => domain.name,
          :task_list => { :name => task_list },
          :maximum_page_size => 1000,
          :reverse_order => false,
          :identity => "#{Socket.gethostname}:#{Process.pid}",
        }}

        before(:each) do
          response.stub(:data).and_return({
            "taskToken"=>"tasktoken",
            "startedEventId"=>3,
            "previousStartedEventId"=>0,
            "workflowType"=>{"name"=>"name", "version"=>"version"},
            "workflowExecution"=> {"workflowId"=>"wid", "runId"=>"rid"},
            "events"=>[
              {
                "workflowExecutionStartedEventAttributes"=>{
                  "parentInitiatedEventId"=>0,
                  "taskStartToCloseTimeout"=>"3600",
                  "taskList"=>{"name"=>"task-list"},
                  "workflowType"=>{"name"=>"name", "version"=>"version"},
                  "executionStartToCloseTimeout"=>"3600",
                  "childPolicy"=>"TERMINATE"
                },
                "eventType"=>"WorkflowExecutionStarted",
                "eventId"=>1,
                "eventTimestamp"=>1320428958.56
              },
              {
                "eventType"=>"DecisionTaskScheduled",
                "eventId"=>2,
                "decisionTaskScheduledEventAttributes"=>{
                  "taskList"=>{"name"=>"task-list"},
                  "startToCloseTimeout"=>"P0Y0M0DT0H0M3600S"
                },
                "eventTimestamp"=>1320428958.56
              },
              {
                "eventType"=>"DecisionTaskStarted",
                "eventId"=>3,
                "eventTimestamp"=>1320428959.24,
                "decisionTaskStartedEventAttributes"=>{
                  "scheduledEventId"=>2
                }
              }
            ]
          })
          client.stub(method).and_return(response)
        end

        context ':identity' do

          it 'passes the identity to the client request' do

            client.should_receive(method).
              with(request_opts.merge(:identity => 'abc')).
              and_return(response)

            tasks.poll_for_single_task(task_list, :identity => 'abc')

          end

          it 'defaults to the hostname and pid' do

            ident = "#{Socket.gethostname}:#{Process.pid}"

            client.should_receive(method).
              with(request_opts.merge(:identity => ident)).
              and_return(response)

            tasks.poll_for_single_task(task_list)

          end

        end

        context ':event_batch_size' do

          it 'sets the maximum page size' do
            client.should_receive(method).
              with(request_opts.merge(:maximum_page_size => 200)).
              and_return(response)
            tasks.poll_for_single_task(task_list, :event_batch_size => 200)
          end

        end

        context ':reverse_event_order' do

          it 'sets the reverse order option' do
            client.should_receive(method).
              with(request_opts.merge(:reverse_order => true)).
              and_return(response)
            tasks.poll_for_single_task(task_list, :reverse_event_order => true)
          end

        end

        context 'block form' do

          let(:task) { tasks.poll_for_single_task(task_list) }

          it 'completes the task at the end of the block' do

            task = double('descision-task')
            task.stub(:responded?).and_return(false)
            task.should_receive(:complete!)
            DecisionTask.stub(:new).and_return(task)

            tasks.poll_for_single_task(task_list) do |task|
              # .. do nothing ..
            end

          end

          it 'does complete tasks that have already been completed' do

            task = double('descision-task')
            task.stub(:responded?).and_return(true)
            task.should_not_receive(:complete!)
            DecisionTask.stub(:new).and_return(task)

            tasks.poll_for_single_task(task_list) do |task|
              # .. do nothing ..
            end

          end

          it 'does not yeild when no result found' do
            response.stub(:data).and_return({})
            yielded = false
            tasks.poll_for_single_task(task_list) do |task|
              yielded = true
            end
            yielded.should == false
          end

        end

        context 'without block' do

          let(:task) { tasks.poll_for_single_task(task_list) }

          it 'returns a decision task when one is found' do
            task.should be_a(DecisionTask)
            task.responded?.should == false
          end

          it 'returns nil when no task is found' do
            response.stub(:data).and_return({})
            tasks.poll_for_single_task(task_list).should == nil
          end

          it 'returns a decision task' do
            task.should be_a(DecisionTask)
          end

          it 'returns a decision task with the correct domain' do
            task.domain.should == domain
          end

          it 'returns a decision task with access to the task token' do
            task.task_token.should == 'tasktoken'
          end

          it 'returns a task with the right execution' do
            execution = domain.workflow_executions['wid','rid']
            task.workflow_execution.should == execution
          end

          it 'returns a task with the right workflow type' do
            task.workflow_type.should == domain.workflow_types['name','version']
          end

          it 'returns a task with previous started event id' do
            task.previous_started_event_id.should == 0
          end

          it 'returns a task with task started event id' do
            task.started_event_id.should == 3
          end

          it 'returns the next token' do
            response.data['nextPageToken'] = 'abc'
            task.next_token.should == 'abc'
          end

        end

      end

      context '#poll' do

        it 'calls #poll_for_single_task in a loop' do

          tasks.should_receive(:poll_for_single_task).
            with('task-list', {}).
            exactly(11).times.
            and_yield(true)

          n = 0
          tasks.poll('task-list') do |task|
            n += 1
            break if n > 10
          end

        end

      end

    end
  end
end
