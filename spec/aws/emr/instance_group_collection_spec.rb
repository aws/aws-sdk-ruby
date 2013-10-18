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
    describe InstanceGroupCollection do

      let(:config) { stub_config }

      let(:client) { config.emr_client }

      let(:job_flow) { JobFlow.new('id', :config => config) }

      let(:instance_groups) { InstanceGroupCollection.new(job_flow) }

      context '#create' do

        let(:response) { client.stub_for(:add_instance_groups) }

        before(:each) do
          client.stub(:add_instance_groups).and_return(response)
        end

        it 'calls #add_instance_groups on the client' do

          response.data[:instance_group_ids] = ["group-id"]
          
          client.should_receive(:add_instance_groups).with(
            :job_flow_id => job_flow.id,
            :instance_groups => [{
              :instance_role => 'role',
              :instance_type => 'type',
              :instance_count => 123,
              :bid_price => '123.45', # stringifies bid price
            }]
          ).and_return(response)

          instance_groups.create('role', 'type', 123, :bid_price => 123.45)

        end

        it 'returns an instance group' do

          response.data[:instance_group_ids] = ['id']

          group = instance_groups.add('role', 'type', 123)
          group.should be_a(InstanceGroup)
          group.job_flow.should eq(job_flow)
          group.config.should eq(job_flow.config)
          group.id.should eq('id')

        end

        it 'is aliased as #add' do
          instance_groups.method(:add).should
            eq(instance_groups.method(:create))
        end

      end

      it_should_behave_like "a simple collection" do

        let(:collection) { instance_groups }
        let(:client_method) { :describe_job_flows }
        let(:member_class) { InstanceGroup }
        let(:request_options) {{ :job_flow_ids => [job_flow.id] }}

        def stub_n_members resp, count

          groups = (1..count).map do |n|
            { :instance_group_id => "id-#{n}" }
          end

          resp.data[:job_flows] = [{
            :job_flow_id => job_flow.id,
            :instances => { :instance_groups => groups }
          }]

        end

        it_should_behave_like "an indexed collection"

      end

    end
  end
end
