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
  class EMR
    describe JobFlowCollection do

      let(:config) { stub_config }

      let(:client) { config.emr_client }

      let(:job_flows) { JobFlowCollection.new(:config => config) }

      context '#create' do

        let(:response) { client.stub_for(:run_job_flow) }

        before(:each) do
          client.stub(:run_job_flow).and_return(response)
        end

        it 'calls #run_job_flow on the client' do

          client.should_receive(:run_job_flow).with(
            :name => 'name',
            :ami_version => 'latest', # default value
            :instances => {}
          ).and_return(response)

          job_flows.create('name')

        end

        it 'returns a job flow' do

          response.data[:job_flow_id] = 'id'

          job_flow = job_flows.create('name')
          job_flow.should be_a(JobFlow)
          job_flow.id.should eq('id')
          job_flow.config.should eq(job_flows.config)

        end

      end

      it_should_behave_like "a simple collection" do

        let(:collection) { job_flows }
        let(:client_method) { :describe_job_flows }
        let(:member_class) { JobFlow }
        let(:request_options) {{}}

        def stub_n_members resp, count
          resp.data[:job_flows] = (1..count).map do |n|
            { :job_flow_id => "job-flow-id-#{n}" }
          end
        end

        it_should_behave_like "an indexed collection"
        it_should_behave_like "a filtered collection"

        context '#with_id' do

          it_behaves_like "a chainable filter method", :with_id do
            let(:value) { 'id' }
            let(:option_name) { :job_flow_ids }
            let(:formatted_value) { %w(id) }
          end

          it_behaves_like "a chainable filter method", :with_id do
            let(:value) { %w(id1 id2) }
            let(:option_name) { :job_flow_ids }
            let(:formatted_value) { %w(id1 id2) }
          end

        end

        context '#with_state' do

          it_behaves_like "a chainable filter method", :with_state do
            let(:value) { 'state' }
            let(:option_name) { :job_flow_states }
            let(:formatted_value) { %w(state) }
          end

          it_behaves_like "a chainable filter method", :with_state do
            let(:value) { %w(state1 state2) }
            let(:option_name) { :job_flow_states }
            let(:formatted_value) { %w(state1 state2) }
          end

        end

        context '#created_before' do

          it_behaves_like "a chainable filter method", :created_before do
            let(:now) { Time.now }
            let(:value) { now }
            let(:formatted_value) { now.iso8601 }
          end

        end

        context '#created_after' do

          it_behaves_like "a chainable filter method", :created_after do
            let(:now) { Time.now }
            let(:value) { now }
            let(:formatted_value) { now.iso8601 }
          end

        end

      end

    end
  end
end
