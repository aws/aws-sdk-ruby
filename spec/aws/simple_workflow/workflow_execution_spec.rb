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
    describe Domain do

      let(:config) { stub_config }

      let(:client) { config.simple_workflow_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:execution) { WorkflowExecution.new(domain, 'wid', 'rid') }

      let(:now) { Time.now }

      let(:response) { client.stub_for(:describe_workflow_execution) }

      let(:execution_desc) {{
        'executionConfiguration' => {
          'childPolicy' => 'TERMINATE',
          'executionStartToCloseTimeout' => '123456789',
          'taskList' => { 'name' => 'task-list' },
          'taskStartToCloseTimeout' => '123456',
        },
        'executionInfo' => {
          'cancelRequested' => false,
          'closeStatus' => 'TERMINATED',
          'closeTimestamp' => 123456789,
          'execution' => {
            'workflowId' => execution.workflow_id,
            'runId' => execution.run_id,
          },
          'executionStatus' => 'CLOSED',
          'parent' => { 'workflowId' => 'abc', 'runId' => 'xyz' },
          'startTimestamp' => 123456789,
          'tagList' => ['abc', 'xyz'],
          'workflowType' => { 'name' => 'name', 'version' => 'version' },
        },
        'latestActivityTaskTimestamp' => 123456789,
        'latestExecutionContext' => 'latest-context',
        'openCounts' => {
          'openTimers' => 1,
          'openDecisionTasks' => 2,
          'openActivityTasks' => 3,
          'openChildWorkflowExecutions' => 4,
        }
      }}

      before(:each) do
        response.stub(:data).and_return(execution_desc)
        client.stub(:describe_workflow_execution).and_return(response)
      end

      context '#domain' do

        it 'is the same as is passed to init' do
          execution.domain.should == domain
        end

      end

      context '#workflow_id' do

        it 'is the same as is passed to init' do
          execution.workflow_id.should == 'wid'
        end

      end

      context '#run_id' do

        it 'is the same as is passed to init' do
          execution.workflow_id.should == 'wid'
        end

      end

      shared_examples_for "an attribute" do |options|

        let(:name)  { options[:name] }
        let(:value) { options[:value] }
        let(:raw)   { options[:raw] || value }
        let(:key)   { options[:as] || name }

        it 'describes the execution when not present' do
          client.should_receive(:describe_workflow_execution).with(
            :domain => domain.name,
            :execution => {
              :workflow_id => execution.workflow_id,
              :run_id => execution.run_id,
            }
          ).and_return(response)
          execution.send(name)
        end

        it 'returns the value in the correct format' do
          execution.send(name).should == value
        end

        if options[:static]

          it 'is cached by initialize' do
            client.should_not_receive(:describe_workflow_execution)

            ex = WorkflowExecution.new(domain, 'wid', 'rid', key => raw)

            if value.is_a?(Time)
              ex.send(name).to_i.should == value.to_i
            else
              ex.send(name).should == value
            end
          end

          it 'is static' do
            client.should_receive(:describe_workflow_execution).with(
              :domain => domain.name,
              :execution => {
                :workflow_id => execution.workflow_id,
                :run_id => execution.run_id,
              }
            ).exactly(1).times.and_return(response)
            execution.send(name)
            execution.send(name)
          end

        end

      end

      context '#child_policy' do

        it_behaves_like "an attribute",
          :name => :child_policy,
          :value => :terminate,
          :static => true

      end

      context '#execution_start_to_close_timeout' do

        it_behaves_like "an attribute",
          :name => :execution_start_to_close_timeout,
          :value => 123456789,
          :static => true

      end

      context '#task_list' do

        it_behaves_like "an attribute",
          :name => :task_list,
          :value => 'task-list',
          :static => true

      end

      context '#task_start_to_close_timeout' do

        it_behaves_like "an attribute",
          :name => :task_start_to_close_timeout,
          :value => 123456,
          :static => true

      end

      context '#cancel_requested' do

        it_behaves_like "an attribute",
          :name => :cancel_requested,
          :value => false

      end

      context '#closed_at' do

        it_behaves_like "an attribute",
          :name => :closed_at,
          :value => Time.at(123456789)

      end

      context '#status' do

        it 'returns the close status when provided' do
          execution.status.should == :terminated
        end

        it 'returns :closed if it is closed without a close status' do
          response.data['executionInfo']['executionStatus'] = 'CLOSED'
          response.data['executionInfo'].delete('closeStatus')
          execution.status.should == :closed
        end

        it 'returns :open if it is not closed' do
          response.data['executionInfo']['executionStatus'] = 'OPEN'
          response.data['executionInfo'].delete('closeStatus')
          execution.status.should == :open
        end

        it 'protects #execution_status' do
          lambda { execution.execution_status }.should raise_error(NoMethodError)
        end

        it 'protects #close_status' do
          lambda { execution.close_status }.should raise_error(NoMethodError)
        end

      end

      context '#parent' do

        domain = Domain.new('domain-name')

        it_behaves_like("an attribute",
          :name => :parent,
          :as => :parent_details,
          :raw => { 'workflowId' => 'abc', 'runId' => 'xyz' },
          :value => WorkflowExecution.new(domain, 'abc', 'xyz'),
          :static => true)

        it 'returns nil when parent is not set' do
          response.data['executionInfo'].delete('parent')
          execution.parent.should == nil
        end

        it 'protects #parent_details' do
          lambda { execution.parent_details }.should raise_error(NoMethodError)
        end

      end

      context '#started_at' do

        it_behaves_like "an attribute",
          :name => :started_at,
          :value => Time.at(123456789),
          :static => true

      end

      context '#tags' do

        it_behaves_like 'an attribute',
          :name => :tags,
          :as => :tag_list,
          :value => %w(abc xyz),
          :static => true

        it 'returns nil as an empty array' do
          response.data['executionInfo'].delete('tagList')
          execution.tags.should == []
        end

      end

      context '#workflow_type' do

        domain = Domain.new('domain-name')
        type = WorkflowType.new(domain, 'name', 'version')

        it_behaves_like 'an attribute',
          :name => :workflow_type,
          :as => :type_details,
          :raw => { 'name' => 'name', 'version' => 'version' },
          :value => type,
          :static => true

        it 'protects #type_details' do
          lambda { execution.type_details }.should raise_error(NoMethodError)
        end

      end

      context '#latest_activity_task_scheduled_at' do

        it_behaves_like 'an attribute',
          :name => :latest_activity_task_scheduled_at,
          :value => Time.at(123456789)

      end

      context '#latest_execution_context' do

        it_behaves_like 'an attribute',
          :name => :latest_execution_context,
          :value => 'latest-context'

      end

      context '#closed?' do

        it 'returns false when the status is :open' do
          execution.stub(:status).and_return(:open)
          execution.closed?.should == false
        end

        it 'returns true when the status is not :open' do
          execution.stub(:status).and_return(:abc)
          execution.closed?.should == true
        end

      end

      context '#open?' do

        it 'returns true when the status is :open' do
          execution.stub(:status).and_return(:open)
          execution.open?.should == true
        end

        it 'returns false when the status is not :open' do
          execution.stub(:status).and_return(:abc)
          execution.open?.should == false
        end

      end

      context '#open_timer_count' do

        it 'returns the value from open counts' do
          execution.open_timer_count.should == 1
        end

      end

      context '#open_decision_task_count' do

        it 'returns the value from open counts' do
          execution.open_decision_task_count.should == 2
        end

      end

      context '#open_activity_task_count' do

        it 'returns the value from open counts' do
          execution.open_activity_task_count.should == 3
        end

      end

      context '#open_child_workflow_execution_count' do

        it 'returns the value from open counts' do
          execution.open_child_workflow_execution_count.should == 4
        end

      end

      context '#events' do

        it 'returns a history events collection' do
          execution.events.should be_a(HistoryEventCollection)
        end

        it 'returns a history events collection with the proper execution' do
          execution.events.workflow_execution.should == execution
        end

        it 'returns a history events collection with the proper config' do
          execution.events.config.should == config
        end

      end

      context '#signal' do

        it 'calls #signal on the collection with a run id' do
          client.should_receive(:signal_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => execution.workflow_id,
            :run_id => execution.run_id,
            :signal_name => 'signal-name')
          execution.signal('signal-name')
        end

      end

      context '#request_cancel' do

        it 'calls #request_cancel on the collection with a run id' do
          client.should_receive(:request_cancel_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => execution.workflow_id,
            :run_id => execution.run_id)
          execution.request_cancel
        end

      end

      context '#terminate' do

        it 'calls #terminate on the collection with a run id' do
          client.should_receive(:terminate_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => execution.workflow_id,
            :run_id => execution.run_id)
          execution.terminate
        end

      end

      context '#count_executions' do

        it 'calls #count on the collection with a run id'  do
          collection = double('workflow-executions')
          collection.should_receive(:count).with(:workflow_id => execution.workflow_id)
          domain.should_receive(:workflow_executions).and_return(collection)
          execution.count_executions
        end

      end

    end
  end
end
