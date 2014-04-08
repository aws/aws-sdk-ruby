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
    describe InstanceGroup do

      let(:config) { stub_config }

      let(:client) { config.emr_client }

      let(:job_flow_id) { 'id' }

      let(:job_flow) { JobFlow.new(job_flow_id, :config => config) }

      let(:instance_group) { InstanceGroup.new(job_flow, 'ig') }

      context '#job_flow' do

        it 'returns the job flow' do
          InstanceGroup.new(job_flow, 'ig').job_flow.should eq(job_flow)
        end

        it 'inherits the job flow configuration' do
          InstanceGroup.new(job_flow, 'ig').config.should eq(job_flow.config)
        end

      end

      context '#instance_group_id' do

        it 'returns the value passed to the constructor' do
          InstanceGroup.new(job_flow, 'ig').instance_group_id.should eq('ig')
        end

        it 'is aliased as id' do
          InstanceGroup.new(job_flow, 'ig').id.should eq('ig')
        end

      end

      resource_context do

        let(:client_name) { :emr_client }

        let(:client_method) { :describe_job_flows }

        let(:request_options) {{ :job_flow_ids => [job_flow_id] }}

        def new_resource options = {}
          InstanceGroup.new(job_flow, 'ig', options)
        end

        def stub_response resp, data
          resp.data[:job_flows] = [{
            :job_flow_id => job_flow.id,
            :instances => {
              :instance_groups => [data.merge(:instance_group_id => 'ig')]
            }
          }]
        end

        attr_context :name, :static => true

        attr_context :market, :static => true

        attr_context :instance_role, :static => true

        attr_context :bid_price, :static => true

        attr_context :instance_type, :static => true

        attr_context :instance_request_count

        attr_context :instance_running_count

        attr_context :state

        attr_context :last_state_change_reason

        attr_context :creation_date_time, :static => true

        attr_context :start_date_time

        attr_context :ready_date_time

        attr_context :end_date_time

        attr_context :end_date_time

      end

      context '#set_instance_count' do

        it 'calls #modify_instance_groups on the client' do

          client.should_receive(:modify_instance_groups).with(
            :instance_groups => [{
              :instance_group_id => 'ig',
              :instance_count => 123,
            }])

          instance_group.set_instance_count(123)

        end

      end

      context '#modify' do

        it 'calls #modify_instance_groups on the client' do

          client.should_receive(:modify_instance_groups).with(
            :instance_groups => [{
              :instance_group_id => 'ig',
              :instance_count => 123,
            }])

          instance_group.modify :instance_count => 123

        end

        it 'accpets :instance_count as :count' do

          client.should_receive(:modify_instance_groups).with(
            :instance_groups => [{
              :instance_group_id => 'ig',
              :instance_count => 123,
            }])

          instance_group.modify :count => 123

        end

      end

      context '#exists?' do

        let(:response) { client.stub_for(:describe_job_flows) }

        before(:each) do
          client.should_receive(:describe_job_flows).
            with(:job_flow_ids => [job_flow.id]).
            and_return(response)
        end

        it 'returns true when it is found in a call to describe job flows' do
          response.data[:job_flows] = [{
            :job_flow_id => job_flow.id,
            :instances => {
              :instance_groups => [
                { :instance_group_id => instance_group.id }
              ]
            }
          }]
          instance_group.exists?.should eq(true)
        end

        it 'returns false when it is not found' do
          response.data[:job_flows] = []
          instance_group.exists?.should eq(false)
        end

      end

    end
  end
end

