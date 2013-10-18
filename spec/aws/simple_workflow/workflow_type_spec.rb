# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    describe WorkflowType do

      let(:config) { stub_config }
      let(:client) { config.simple_workflow_client }
      let(:domain) { Domain.new('domain-name', :config => config) }
      let(:type)   { WorkflowType.new(domain, 'name', 'version') }

      context '#start_execution' do

        let(:response) { client.stub_for(:start_workflow_execution) }

        before(:each) do
          response.data['runId'] = 'run-id'
          client.stub(:start_workflow_execution).and_return(response)
        end

        it 'calls #start_workflow_execution on the client' do
          client.should_receive(:start_workflow_execution).with(hash_including(
            :domain => domain.name,
            :workflow_type => { :name => type.name, :version => type.version }
          )).and_return(response)
          type.start_execution
        end

        context ":workflow_id" do

          it 'autogenerates a workflow id' do
            type.start_execution.workflow_id.should =~
              /[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}/
          end

          it 'accepts a workflow id' do
            client.should_receive(:start_workflow_execution).
              with(hash_including(:workflow_id => 'abcxyz')).
              and_return(response)
            execution = type.start_execution(:workflow_id => 'abcxyz')
            execution.workflow_id.should == 'abcxyz'
          end

        end

        context ':task_start_to_close_timeout' do

          it 'accepts integers' do
            client.should_receive(:start_workflow_execution).
              with(hash_including(:task_start_to_close_timeout => '1234')).
              and_return(response)
            type.start_execution(:task_start_to_close_timeout => 1234)
          end

          it 'converts :none into NONE' do
            client.should_receive(:start_workflow_execution).
              with(hash_including(:task_start_to_close_timeout => 'NONE')).
              and_return(response)
            type.start_execution(:task_start_to_close_timeout => :none)
          end

        end

        context ':execution_start_to_close_timeout' do

          it 'accepts integers' do
            client.should_receive(:start_workflow_execution).
              with(hash_including(:execution_start_to_close_timeout => '1234')).
              and_return(response)
            type.start_execution(:execution_start_to_close_timeout => 1234)
          end

          it 'converts :none into NONE' do
            client.should_receive(:start_workflow_execution).
              with(hash_including(:execution_start_to_close_timeout => 'NONE')).
              and_return(response)
            type.start_execution(:execution_start_to_close_timeout => :none)
          end

        end

        context ':task_list' do

          it 'accepts a task list' do
            client.should_receive(:start_workflow_execution).
              with(hash_including(:task_list => { :name => 'task-list-name' })).
              and_return(response)
            type.start_execution(:task_list => 'task-list-name')
          end

        end

      end

      context '#count_executions' do

        let(:response) { client.stub_for(:count_open_workflow_executions) }

        it 'counts workflow executions of its own type' do
          response.data['count'] = 0
          response.data['truncated'] = false
          client.should_receive(:count_open_workflow_executions).with(hash_including(
            :type_filter =>{ :name => type.name, :version => type.version }
          )).and_return(response)
          type.count_executions.should == Count.new(0, false)
        end

      end

      config_attributes = [
        :default_child_policy,
        :default_execution_start_to_close_timeout,
        :default_task_start_to_close_timeout,
      ]

      it_should_behave_like("a simple workflow type", config_attributes) do

        let(:config) { stub_config }
        let(:client) { config.simple_workflow_client }
        let(:domain) { Domain.new('domain-name', :config => config) }
        let(:type)   { WorkflowType.new(domain, 'name', 'version') }

        let(:type_class)       { WorkflowType }
        let(:describe_method)  { :describe_workflow_type }
        let(:deprecate_method) { :deprecate_workflow_type }

        context '#count_executions' do

          it 'calls count on the workflow executions collection' do
            response = client.stub_for(:count_open_workflow_executions)
            response.data['count'] = 2
            response.data['truncated'] = true
            client.should_receive(:count_open_workflow_executions).with(
              :start_time_filter => { :oldest_date => anything() },
              :type_filter => { :version => "version", :name => "name" },
              :domain => "domain-name"
            ).and_return(response)
            type.count_executions.should == Count.new(2, true)
          end

        end

      end

    end
  end
end
