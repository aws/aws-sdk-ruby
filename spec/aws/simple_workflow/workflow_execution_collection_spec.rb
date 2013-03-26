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
    describe WorkflowExecutionCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_workflow_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:executions) { WorkflowExecutionCollection.new(domain) }

      context '#domain' do

        it 'returns the domain passed to initialize' do
          executions.domain.should == domain
        end

      end

      context '#[]' do

        it 'returns a workflow exeuction' do
          executions['wid','rid'].should be_a(WorkflowExecution)
        end

        it 'returns a workflow exeuction with the proper domain' do
          executions['wid','rid'].domain.should == domain
        end

        it 'returns a workflow exeuction with the given workflow id' do
          executions['wid','rid'].workflow_id.should == 'wid'
        end

        it 'returns a workflow exeuction with the given run id' do
          executions['wid','rid'].run_id.should == 'rid'
        end

        it 'returns a workflow exeuction with the proper config' do
          executions['wid','rid'].config.should == config
        end

        it 'is an alias of #at' do
          executions.method(:at).should == executions.method(:[])
        end

      end

      context '#signal' do

        it 'calls #signal_workflow_execution on the client' do
          client.should_receive(:signal_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :signal_name => 'signal-name')
          executions.signal('wid', 'signal-name')
        end

        it 'accepts a string of input' do
          client.should_receive(:signal_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :signal_name => 'signal-name',
            :input => 'input-string')
          executions.signal('wid', 'signal-name', :input => 'input-string')
        end

        it 'accepts a run id' do
          client.should_receive(:signal_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :signal_name => 'signal-name',
            :run_id => 'run-id')
          executions.signal('wid', 'signal-name', :run_id => 'run-id')
        end

      end

      context '#request_cancel' do

        it 'calls #request_cancel_workflow on the client' do
          client.should_receive(:request_cancel_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid')
          executions.request_cancel('wid')
        end

        it 'accepts a run id' do
          client.should_receive(:request_cancel_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :run_id => 'run-id')
          executions.request_cancel('wid', :run_id => 'run-id')
        end

      end

      context '#terminate' do

        it 'calls #terminate_workflow_execution on the client' do
          client.should_receive(:terminate_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid')
          executions.terminate('wid')
        end

        it 'accepts a child policy' do
          client.should_receive(:terminate_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :child_policy => 'TERMINATE')
          executions.terminate('wid', :child_policy => :terminate)
        end

        it 'accepts a reason string' do
          client.should_receive(:terminate_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :reason => 'reason')
          executions.terminate('wid', :reason => 'reason')
        end

        it 'accepts a details string' do
          client.should_receive(:terminate_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :details => 'details')
          executions.terminate('wid', :details => 'details')
        end

        it 'accepts a run id' do
          client.should_receive(:terminate_workflow_execution).with(
            :domain => domain.name,
            :workflow_id => 'wid',
            :run_id => 'run_id')
          executions.terminate('wid', :run_id => 'run_id')
        end

      end

      shared_examples_for "a filterable execution method" do

        let(:response) { client.stub_for(open_method) }

        it 'defaults to all open executions' do
          client.should_receive(open_method).
            with(request_options).
            and_return(response)
          executions.send(method)
        end

        it 'can be filtered by a workflow id' do
          client.should_receive(open_method).
            with(request_options.merge(
              :execution_filter => { :workflow_id => 123 }
            )).and_return(response)
          executions.send(method, :workflow_id => 123)
        end

        it 'can be chain filtered by a workflow id' do
          client.should_receive(open_method).
            with(request_options.merge(
              :execution_filter => { :workflow_id => 123 }
            )).and_return(response)
          executions.with_workflow_id(123).send(method)
        end

        it 'can be filtered by a tag' do
          client.should_receive(open_method).
            with(request_options.merge(
              :tag_filter => { :tag => 'abc' }
            )).and_return(response)
          executions.send(method, :tagged => 'abc')
        end

        it 'can be chain filtered by a tag' do
          client.should_receive(open_method).
            with(request_options.merge(
              :tag_filter => { :tag => 'abc' }
            )).and_return(response)
          executions.tagged('abc').send(method)
        end

        it 'can be filtered by a workflow type' do
          type = domain.workflow_types['name','version']
          client.should_receive(open_method).
            with(request_options.merge(
              :type_filter => { :name => type.name, :version => type.version }
            )).and_return(response)
          executions.send(method, :workflow_type => type)
        end

        it 'can be filtered by a workflow type hash' do
          type = { :name => 'name', :version => 'version' }
          client.should_receive(open_method).
            with(request_options.merge(
              :type_filter => { :name => 'name', :version => 'version' }
            )).and_return(response)
          executions.send(method, :workflow_type => type)
        end

        it 'can be chain filtered by a workflow type' do
          type = domain.workflow_types['name','version']
          client.should_receive(open_method).
            with(request_options.merge(
              :type_filter => { :name => type.name, :version => type.version }
            )).and_return(response)
          executions.with_workflow_type(type).send(method)
        end

        it 'accepts Time objects' do
          now = Time.now
          client.should_receive(open_method).
            with(request_options.merge(
              :start_time_filter => {
                :oldest_date => now.to_i
              }
            )).and_return(response)
          executions.started_after(now).send(method)
        end

        it 'accepts Integers as timestamps' do
          now = Time.now
          client.should_receive(open_method).
            with(request_options.merge(
              :start_time_filter => {
                :oldest_date => early_2010,
                :latest_date => now.to_i
              }
            )).and_return(response)
          executions.started_before(now.to_i).send(method)
        end

        it 'parses other objects a time strings' do
          request_options.delete(:start_time_filter)
          now = Time.now
          client.should_receive(closed_method).
            with(request_options.merge(
              :close_time_filter => {
                :oldest_date => now.to_i
              }
            )).and_return(response)
          executions.closed_after(DateTime.parse(now.to_s)).send(method)
        end

        it 'can be filtered by both started_before and started_after' do
          a = Time.now - 100
          b = Time.now
          client.should_receive(open_method).
            with(request_options.merge(
              :start_time_filter => {
                :oldest_date => a.to_i,
                :latest_date => b.to_i
              }
            )).and_return(response)
          executions.started_between(a,b).send(method)
        end

        it 'raises an error if filtered by started_before and closed_after' do
          lambda {
            executions.
              started_before(Time.now).
              closed_after(Time.now).
              send(method)
          }.should raise_error(/start or close time but not both/)
        end

        it 'raises an error if filtered by started_before and closed_before' do
          lambda {
            executions.
              started_before(Time.now).
              closed_before(Time.now).
              send(method)
          }.should raise_error(/start or close time but not both/)
        end

        it 'raises an error if filtered by started_after and closed_after' do
          lambda {
            executions.
              started_after(Time.now).
              closed_after(Time.now).
              send(method)
          }.should raise_error(/start or close time but not both/)
        end

        it 'raises an error if filtered by started_after and closed_before' do
          lambda {
            executions.
              started_after(Time.now).
              closed_before(Time.now).
              send(method)
          }.should raise_error(/start or close time but not both/)
        end

        it 'raises an error if filtered by closed_before with open status' do
          lambda {
            executions.
              with_status(:open).
              closed_before(Time.now).
              send(method)
          }.should raise_error
        end

        it 'raises an error if filtered by closed_after with open status' do
          lambda {
            executions.
              with_status(:open).
              closed_after(Time.now).
              send(method)
          }.should raise_error
        end

        context 'closed executions' do

          it 'can be filtered by both closed_before and closed_after' do
            a = Time.now - 100
            b = Time.now
            request_options.delete(:start_time_filter)
            client.should_receive(closed_method).
              with(request_options.merge(
                :close_time_filter => {
                  :oldest_date => a.to_i,
                  :latest_date => b.to_i,
                }
              )).and_return(response)
            executions.closed_between(a,b).send(method)
          end

          it 'calls the closed method instead of open' do
            client.should_receive(closed_method).
              with(request_options).
              and_return(response)
            executions.send(method, :status => :closed)
          end

          it 'passes the closed status when its something other than closed' do
            client.should_receive(closed_method).
              with(request_options.merge(
                :close_status_filter => { :status => 'TERMINATED' }
              )).and_return(response)
            executions.send(method, :status => :terminated)
          end

          it 'can be changed by chaining methods' do
            client.should_receive(closed_method).
              with(request_options).
              and_return(response)
            executions.with_status(:closed).send(method)
          end

          it 'counts closed executions when filtering by a closed date' do

            time = Time.now - 3600

            request_options.delete(:start_time_filter)

            client.should_receive(closed_method).
              with(request_options.merge(
                :close_time_filter => { :oldest_date => time.to_i }
              )).and_return(response)

            executions.closed_after(time).send(method)

          end

          it 'adds the oldest date when not set for closed time filters' do

            now = Time.now

            request_options.delete(:start_time_filter)

            client.should_receive(closed_method).
              with(request_options.merge(
                :close_time_filter => {
                  :oldest_date => early_2010,
                  :latest_date => now.to_i
                }
              )).and_return(response)

            executions.closed_before(now).send(method)

          end

        end

      end

      context '#count' do

        it_should_behave_like "a filterable execution method" do

          let(:method) { :count }
          let(:open_method) { :count_open_workflow_executions }
          let(:closed_method) { :count_closed_workflow_executions }
          let(:early_2010) {  Time.parse('2010-01-01').to_i }
          let(:request_options) {{
            :domain => domain.name,
            :start_time_filter => { :oldest_date => early_2010 },
          }}

          before(:each) do
            response.data['count'] = 10
            response.data['truncated'] = true
          end

          it 'returns a populated count object' do
            count = executions.count
            count.should be_a(Count)
            count.count.should == 10
            count.truncated?.should == true
          end

        end

      end

      context '#each' do

        it_should_behave_like "a filterable execution method" do

          let(:method) { :each }
          let(:open_method) { :list_open_workflow_executions }
          let(:closed_method) { :list_closed_workflow_executions }
          let(:early_2010) {  Time.parse('2010-01-01').to_i }
          let(:request_options) {{
            :domain => domain.name,
            :start_time_filter => { :oldest_date => early_2010 },
            :reverse_order => false,
          }}

          before(:each) do
            response.data['executionInfos'] = []
          end

        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { executions }
        let(:client_method)   { :list_open_workflow_executions }
        let(:next_token_key)  { :next_page_token }
        let(:limit_key)       { :maximum_page_size }
        let(:now)             { Time.now }
        let(:request_options) {{
          :start_time_filter => {
            :oldest_date => Time.parse('2010-01-01').to_i,
          },
          :reverse_order => false,
          :domain => domain.name
        }}

        def stub_next_token(response, token)
          response.data['nextPageToken'] = token
        end

        def stub_n_members response, n
          response.data['executionInfos'] = (1..n).collect do |i|
            {
              'cancelRequested' => false,
              'closeStatus' => 'TERMINATED',
              'closeTimestamp' => now.to_i,
              'execution' => { 'workflowId' => "wid#{i}", 'runId' => "rid#{i}" },
              'executionStatus' => 'CLOSED',
              'parent' => { 'workflowId' => 'abc', 'runId' => 'xyz' },
              'startTimestamp' => (now - 1000).to_i,
              'tagList' => ['abc', 'xyz'],
              'workflowType' => { 'name' => 'type-name', 'version' => 'type-version' },
            }
          end
        end

        it_should_behave_like "a collection that yields models" do
          let(:member_class)  { WorkflowExecution }
        end

        let(:response) { double('resp', :data => { 'executionInfos' => [] }) }

        it 'should be reverseable' do

          client.should_receive(client_method).with(request_options.merge(
            :reverse_order => true
          )).and_return(response)

          executions.each(:reverse_order => true) {|ex|}

        end

        it 'should be reversable with #reverse_order' do

          client.should_receive(client_method).with(request_options.merge(
            :reverse_order => true
          )).and_return(response)

          executions.reverse_order.each {|ex|}

        end

        it 'yields populated workflow executions' do

          type = domain.workflow_types['type-name','type-version']
          parent = domain.workflow_executions['abc', 'xyz']

          stub_n_members(response,2)

          client.should_not_receive(:describe_workflow_execution)

          list = executions.to_a
          list[0].should be_a(WorkflowExecution)
          list[0].domain.should == domain
          list[0].workflow_id.should == 'wid1'
          list[0].run_id.should == 'rid1'
          list[0].started_at.to_i.should == (now - 1000).to_i
          list[0].parent.should == parent
          list[0].tags.should == %w(abc xyz)
          list[0].workflow_type.should == type

        end

      end

    end
  end
end
