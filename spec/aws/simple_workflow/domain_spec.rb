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

      let(:response) { client.stub_for(:describe_domain) }

      let(:domain_desc) {{
        'configuration' => { 'workflowExecutionRetentionPeriodInDays' => '1234' },
        'domainInfo' => {
          'name' => domain.name,
          'description' => 'desc',
          'status' => 'REGISTERED',
        },
      }}

      before(:each) do
        response.stub(:data).and_return(domain_desc)
        client.stub(:describe_domain).and_return(response)
      end

      context '#name' do

        it 'is set in the constructor' do
          Domain.new('domain-name').name.should == 'domain-name'
        end

        it 'returns the name as a string' do
          Domain.new(:name).name.should == 'name'
        end

      end

      context '#exists?' do

        it 'returns true when the domain can be described' do
          domain.exists?.should == true
        end

        it 'returns false when the domain can not be described' do
          client.should_receive(:describe_domain).
            with(:name => domain.name).
            and_raise(Errors::UnknownResourceFault)
          domain.exists?.should == false
        end

      end

      context '#retention_period' do

        it 'returns the description if set' do
          client.should_not_receive(:describe_domain)
          domain = Domain.new('name', :retention_period => 1234567)
          domain.retention_period.should == 1234567
        end

        it 'describes the domain to get a description if not set' do
          client.should_receive(:describe_domain).
            with(:name => domain.name).
            and_return(response)
          domain.retention_period.should == 1234
        end

        it 'converts NONE into :none' do
          domain_desc['configuration']['workflowExecutionRetentionPeriodInDays'] = 'NONE'
          domain.retention_period.should == :none
        end

      end

      context '#description' do

        it 'returns the description if set' do
          client.should_not_receive(:describe_domain)
          Domain.new('name', :description => 'abc').description.should == 'abc'
        end

        it 'describes the domain to get a description if not set' do
          client.should_receive(:describe_domain).
            with(:name => domain.name).
            and_return(response)
          domain.description.should == 'desc'
        end

        it 'returns nil when the description is not set' do
          domain_desc['domainInfo'].delete('description')
          domain.description.should == nil
        end

        it 'is static' do

          client.should_receive(:describe_domain).
            with(:name => domain.name).
            exactly(1).times.
            and_return(response)

          domain.description.should == 'desc'
          domain.description.should == 'desc'

        end

      end

      context '#status' do

        it 'describes the domain to get the status' do
          client.should_receive(:describe_domain).
            with(:name => domain.name).
            and_return(response)
          domain.status.should == :registered
        end

        it 'returns the status as a symbol' do
          domain.status.should == :registered
        end

        it 'is not static' do

          client.should_receive(:describe_domain).
            exactly(2).times.
            and_return(response)

          domain.status.should == :registered
          domain.status.should == :registered

        end

        it 'can be memoized' do

          client.should_receive(:describe_domain).
            exactly(1).times.
            and_return(response)

          AWS.memoize do
            domain.status.should == :registered
            domain.status.should == :registered
          end

        end

      end

      context '#deprecate' do

        it 'calls deprecate_domain on the client' do
          client.should_receive(:deprecate_domain).with(:name => domain.name)
          domain.deprecate
        end

        it 'is aliased to #delete' do
          domain.method(:delete).should == domain.method(:deprecate)
        end

      end

      context "#deprecated?" do

        it 'returns true when the status is DEPRECATED' do
          domain_desc['domainInfo']['status'] = 'DEPRECATED'
          domain.deprecated?.should == true
        end

        it 'returns false when the status is REGISTERED' do
          domain_desc['domainInfo']['status'] = 'REGISTERED'
          domain.deprecated?.should == false
        end

      end

      context '#workflow_types' do

        it 'returns a workflow type collection' do
          domain.workflow_types.should be_a(WorkflowTypeCollection)
        end

        it 'returns a collection with the proper domain' do
          domain.workflow_types.domain.should == domain
        end

        it 'returns a collection with the proper config' do
          domain.workflow_types.config.should == config
        end

      end

      context '#activity_types' do

        it 'returns a activity type collection' do
          domain.activity_types.should be_a(ActivityTypeCollection)
        end

        it 'returns a collection with the proper domain' do
          domain.activity_types.domain.should == domain
        end

        it 'returns a collection with the proper config' do
          domain.activity_types.config.should == config
        end

      end

      context '#workflow_executions' do

        it 'returns a workflow execution collection' do
          domain.workflow_executions.should be_a(WorkflowExecutionCollection)
        end

        it 'returns a collection with the proper domain' do
          domain.workflow_executions.domain.should == domain
        end

        it 'returns a collection with the proper config' do
          domain.workflow_executions.config.should == config
        end

      end

      context '#decision_tasks' do

        it 'returns a decision task collection collection' do
          domain.decision_tasks.should be_a(DecisionTaskCollection)
        end

        it 'returns a collection with the proper domain' do
          domain.decision_tasks.domain.should == domain
        end

        it 'returns a collection with the proper config' do
          domain.decision_tasks.config.should == config
        end

      end

    end
  end
end
