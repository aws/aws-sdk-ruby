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

      let(:task) { DecisionTask.new(domain, request_opts, data) }

      # for paging events
      let(:request_opts) {{
        :domain => domain.name,
        :task_list => { :name => 'task-list' },
        :maximum_page_size => 1000,
        :reverse_order => false
      }}

      let(:data) {{
        "taskToken"=>"tasktoken",
        "startedEventId"=>3,
        "previousStartedEventId"=>1,
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
      }}

      context '#events' do

        it 'returns an enumerable object' do
          task.events.should be_a(Enumerable)
        end

        it 'yields once for each even in the poll response' do
          task.events.to_a.size.should == 3
        end

        it 'adds a #new? method to each event' do
          task.events.map(&:new?).should == [false, true, true]
        end

      end

      context '#new_events' do

        it 'yields only events that are new' do
          task.new_events.to_a.size.should == 2
        end

      end

      context '#responded?' do

        it 'returns false if #complete! has no been called' do
          task.responded?.should == false
        end

        it 'returns true if #complete! has no been called' do
          task.complete!
          task.responded?.should == true
        end

      end

      context '#complete!' do

        it 'raises an error if a response was already sent' do
          task.complete!
          lambda { task.complete! }.should raise_error(/already responded/)
        end

        it 'calls respond_decision_task_completed on the client' do
          client.should_receive(:respond_decision_task_completed).
            with(:task_token => task.task_token)
          task.complete!
        end

      end

      context 'decisions' do

        before(:each) do
          UUIDTools::UUID.stub(:random_create).and_return('uuid')
        end

        let(:activity_type) { domain.activity_types['name','version'] }

        def makes_decisions task, *decisions
          opts = {}
          opts[:task_token] = task.task_token
          opts[:decisions] = decisions
          client.should_receive(:respond_decision_task_completed).with(opts)
        end

        context '#schedule_activity_task' do

          it 'adds a schedule activity task decision to the response' do
            makes_decisions(task, {
              :decision_type => 'ScheduleActivityTask',
              :schedule_activity_task_decision_attributes => {
                :activity_id => 'uuid',
                :activity_type => { :name => 'name', :version => 'version' },
              }
            })
            task.schedule_activity_task(activity_type)
            task.complete!
          end

          it 'accepts a variety of options' do
            makes_decisions(task, {
              :decision_type => 'ScheduleActivityTask',
              :schedule_activity_task_decision_attributes => {
                :activity_id => 'activity-id',
                :activity_type => { :name => 'name', :version => 'version' },
                :heartbeat_timeout => '123',
                :schedule_to_close_timeout => '321',
                :schedule_to_start_timeout => '132',
                :start_to_close_timeout => 'NONE',
                :task_list => { :name => 'task-list' },
              }
            })
            activity_type = { :name => 'name', :version => 'version' }
            task.schedule_activity_task(activity_type, {
              :activity_id => 'activity-id',
              :heartbeat_timeout => 123,
              :schedule_to_close_timeout => 321,
              :schedule_to_start_timeout => 132,
              :start_to_close_timeout => :none,
              :task_list => 'task-list',
            })
            task.complete!
          end

          it 'raises an error for an invalid activity type' do
            lambda {
              # if its a hash it must have :name and :version keys
              task.schedule_activity_task({'name' => 'n', 'version' => 'v'})
            }.should raise_error(ArgumentError, /activity_type/)
          end

        end

        context '#request_cancel_activity_task' do

          it 'accepts an activity task' do
            makes_decisions(task, {
              :decision_type => 'RequestCancelActivityTask',
              :request_cancel_activity_task_decision_attributes => {
                :activity_id => 'activity-id',
              }
            })
            task.request_cancel_activity_task('activity-id')
            task.complete!
          end

          it 'accepts an activity task id' do
            makes_decisions(task, {
              :decision_type => 'RequestCancelActivityTask',
              :request_cancel_activity_task_decision_attributes => {
                :activity_id => 'activity-id',
              }
            })
            data = Hash.new({})
            data['activityId'] = 'activity-id'
            activity_task = ActivityTask.new(domain, data)
            task.request_cancel_activity_task(activity_task)
            task.complete!
          end

        end

        context '#complete_workflow_execution' do

          it 'can be called without options' do
            makes_decisions(task, {
              :decision_type => 'CompleteWorkflowExecution',
              :complete_workflow_execution_decision_attributes => {},
            })
            task.complete_workflow_execution
            task.complete!
          end

          it 'accepts a result' do
            makes_decisions(task, {
              :decision_type => 'CompleteWorkflowExecution',
              :complete_workflow_execution_decision_attributes => {
                :result => 'abc'
              },
            })
            task.complete_workflow_execution(:result => 'abc')
            task.complete!
          end

        end

        context '#fail_workflow_execution' do

          it 'can be called without options' do
            makes_decisions(task, {
              :decision_type => 'FailWorkflowExecution',
              :fail_workflow_execution_decision_attributes => {},
            })
            task.fail_workflow_execution
            task.complete!
          end

          it 'can be called with options (:reason and :details)' do
            makes_decisions(task, {
              :decision_type => 'FailWorkflowExecution',
              :fail_workflow_execution_decision_attributes => {
                :reason => 'abc',
                :details => 'xyz',
              },
            })
            task.fail_workflow_execution(:reason => 'abc', :details => 'xyz')
            task.complete!
          end

        end

        context '#cancel_workflow_execution' do

          it 'can be called without options' do
            makes_decisions(task, {
              :decision_type => 'CancelWorkflowExecution',
              :cancel_workflow_execution_decision_attributes => {},
            })
            task.cancel_workflow_execution
            task.complete!
          end

          it 'can be called with :details' do
            makes_decisions(task, {
              :decision_type => 'CancelWorkflowExecution',
              :cancel_workflow_execution_decision_attributes => {
                :details => 'abc',
              },
            })
            task.cancel_workflow_execution(:details => 'abc')
            task.complete!
          end

        end

        context '#continue_as_new_workflow_execution' do

          it 'can be called without options' do
            makes_decisions(task, {
              :decision_type => 'ContinueAsNewWorkflowExecution',
              :continue_as_new_workflow_execution_decision_attributes => {},
            })
            task.continue_as_new_workflow_execution
            task.complete!
          end

          it 'can be called with options' do
            makes_decisions(task, {
              :decision_type => 'ContinueAsNewWorkflowExecution',
              :continue_as_new_workflow_execution_decision_attributes => {
                :child_policy => 'TERMINATE',
                :execution_start_to_close_timeout => '1000',
                :task_start_to_close_timeout => 'NONE',
                :task_list => { :name => 'task-list' },
              },
            })
            task.continue_as_new_workflow_execution(
              :child_policy => :terminate,
              :execution_start_to_close_timeout => 1000,
              :task_start_to_close_timeout => :none,
              :task_list => 'task-list')
            task.complete!
          end

        end

        context '#record_marker' do

          it 'can be called without options' do
            makes_decisions(task, {
              :decision_type => 'RecordMarker',
              :record_marker_decision_attributes => {
                :marker_name => 'marker-name',
              },
            })
            task.record_marker('marker-name')
            task.complete!
          end

          it 'can be called with :details' do
            makes_decisions(task, {
              :decision_type => 'RecordMarker',
              :record_marker_decision_attributes => {
                :marker_name => 'marker-name',
                :details => 'details'
              },
            })
            task.record_marker('marker-name', :details => 'details')
            task.complete!
          end

        end

        context '#start_timer' do

          it 'can be called without options' do
            makes_decisions(task, {
              :decision_type => 'StartTimer',
              :start_timer_decision_attributes => {
                :timer_id => 'uuid',
                :start_to_fire_timeout => '60',
              },
            })
            task.start_timer(60)
            task.complete!
          end

          it 'can be called with :timer_id' do
            makes_decisions(task, {
              :decision_type => 'StartTimer',
              :start_timer_decision_attributes => {
                :timer_id => 'timer-id',
                :start_to_fire_timeout => 'NONE',
              },
            })
            task.start_timer(:none, :timer_id => 'timer-id')
            task.complete!
          end

          it 'returns the timer id' do
            task.start_timer(60, :timer_id => 'timer-id').should == 'timer-id'
          end

          it 'returns the timer id for auto-generated timer ids' do
            task.start_timer(60).should == 'uuid'
          end

        end

        context '#cancel_timer' do

          it 'adds a decision' do
            makes_decisions(task, {
              :decision_type => 'CancelTimer',
              :cancel_timer_decision_attributes => { :timer_id => 'timer-id', },
            })
            task.cancel_timer('timer-id')
            task.complete!
          end

        end

        context '#signal_external_workflow_execution' do

          it 'accepts a workflow execution id' do
            makes_decisions(task, {
              :decision_type => 'SignalExternalWorkflowExecution',
              :signal_external_workflow_execution_decision_attributes => {
                :workflow_id => 'wid',
                :signal_name => 'signal-name',
              },
            })
            task.signal_external_workflow_execution('wid', 'signal-name')
            task.complete!
          end

          it 'accepts a workflow execution object' do
            makes_decisions(task, {
              :decision_type => 'SignalExternalWorkflowExecution',
              :signal_external_workflow_execution_decision_attributes => {
                :workflow_id => 'wid',
                :run_id => 'rid',
                :signal_name => 'signal-name',
              },
            })
            ex = domain.workflow_executions['wid','rid']
            task.signal_external_workflow_execution(ex, 'signal-name')
            task.complete!
          end

          it 'accepts a workflow execution hash' do
            makes_decisions(task, {
              :decision_type => 'SignalExternalWorkflowExecution',
              :signal_external_workflow_execution_decision_attributes => {
                :workflow_id => 'wid',
                :run_id => 'rid',
                :signal_name => 'signal-name',
                :input => 'input',
              },
            })
            ex = { :workflow_id => 'wid', :run_id => 'rid' }
            task.signal_external_workflow_execution(ex, 'signal-name', :input => 'input')
            task.complete!
          end

          it 'raise an argument error for a bad hash' do
            ex = { 'name' => 'n', 'version' => 'v' } # expects symbol keys
            lambda {
              task.signal_external_workflow_execution(ex, 'signalname')
            }.should raise_error(ArgumentError, /workflow_execution/)
          end

        end

        context '#request_cancel_external_workflow_execution' do

          it 'accepts a workflow execution id' do
            makes_decisions(task, {
              :decision_type => 'RequestCancelExternalWorkflowExecution',
              :request_cancel_external_workflow_execution_decision_attributes => {
                :workflow_id => 'wid',
              },
            })
            task.request_cancel_external_workflow_execution('wid')
            task.complete!
          end

          it 'accepts a workflow execution object' do
            makes_decisions(task, {
              :decision_type => 'RequestCancelExternalWorkflowExecution',
              :request_cancel_external_workflow_execution_decision_attributes => {
                :workflow_id => 'wid',
                :run_id => 'rid',
              },
            })
            ex = domain.workflow_executions['wid','rid']
            task.request_cancel_external_workflow_execution(ex)
            task.complete!
          end

          it 'accepts a workflow execution hash' do
            makes_decisions(task, {
              :decision_type => 'RequestCancelExternalWorkflowExecution',
              :request_cancel_external_workflow_execution_decision_attributes => {
                :workflow_id => 'wid',
                :run_id => 'rid',
              },
            })
            ex = { :workflow_id => 'wid', :run_id => 'rid' }
            task.request_cancel_external_workflow_execution(ex)
            task.complete!
          end

          it 'raise an argument error for a bad hash' do
            ex = { 'name' => 'n', 'version' => 'v' }
            lambda {
              task.request_cancel_external_workflow_execution(ex)
            }.should raise_error(ArgumentError, /workflow_execution/)
          end
        end

        context '#start_child_workflow_execution' do

          it 'accepts a workflow type object' do
            makes_decisions(task, {
              :decision_type => 'StartChildWorkflowExecution',
              :start_child_workflow_execution_decision_attributes => {
                :workflow_id => 'uuid',
                :workflow_type => { :name => 'name', :version => 'version' },
              },
            })
            type = domain.workflow_types['name','version']
            task.start_child_workflow_execution(type)
            task.complete!
          end

          it 'can be called with options' do
            makes_decisions(task, {
              :decision_type => 'StartChildWorkflowExecution',
              :start_child_workflow_execution_decision_attributes => {
                :workflow_id => 'wid',
                :workflow_type => { :name => 'name', :version => 'version' },
                :child_policy => 'TERMINATE',
                :execution_start_to_close_timeout => '1000',
                :task_start_to_close_timeout => 'NONE',
                :task_list => { :name => 'task-list' },
                :control => 'control',
              },
            })
            type = { :name => 'name', :version => 'version' }
            task.start_child_workflow_execution(type,
              :workflow_id => 'wid',
              :child_policy => :terminate,
              :execution_start_to_close_timeout => 1000,
              :task_start_to_close_timeout => :none,
              :task_list => 'task-list',
              :control => 'control')
            task.complete!
          end

          it 'raises an error if the type is malformed' do
            lambda {
              task.start_child_workflow_execution({})
            }.should raise_error(ArgumentError, /workflow_type/)
          end

        end

      end

    end
  end
end
