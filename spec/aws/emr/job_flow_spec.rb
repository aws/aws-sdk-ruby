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
    describe JobFlow do

      let(:config) { stub_config }

      let(:client) { config.emr_client }

      let(:job_flow_id) { 'job-flow-id' }

      let(:job_flow) { JobFlow.new(job_flow_id, :config => config) }

      context '#job_flow_id' do

        it 'returns the value passed to the constructor' do
          JobFlow.new('id').job_flow_id.should eq('id')
        end

        it 'is aliased as id' do
          job_flow = JobFlow.new('id')
          job_flow.method(:job_flow_id).should eq(job_flow.method(:id))
        end

      end

      resource_context do

        let(:client_name) { :emr_client }

        let(:client_method) { :describe_job_flows }

        let(:request_options) {{ :job_flow_ids => [job_flow_id] }}

        def new_resource options = {}
          JobFlow.new(job_flow_id, options)
        end

        def stub_response resp, data
          resp.data[:job_flows] = [data.merge(:job_flow_id => job_flow_id)]
        end

        attr_context :name, :static => true

        attr_context :ami_version, :static => true

        attr_context :log_uri, :static => true

        attr_context :supported_products, :static => true

        attr_context :state do
          let(:data) {{
            :execution_status_detail => { :state => value }
          }}
        end

        attr_context :creation_date_time, :static => true do
          let(:data) {{
            :execution_status_detail => { :creation_date_time => value }
          }}
        end

        attr_context :start_date_time do
          let(:data) {{
            :execution_status_detail => { :start_date_time => value }
          }}
        end

        attr_context :ready_date_time do
          let(:data) {{
            :execution_status_detail => { :ready_date_time => value }
          }}
        end

        attr_context :end_date_time do
          let(:data) {{
            :execution_status_detail => { :end_date_time => value }
          }}
        end

        attr_context :last_state_change_reason do
          let(:data) {{
            :execution_status_detail => { :last_state_change_reason => value }
          }}
        end

        attr_context :master_instance_type do
          let(:data) {{
            :instances => { :master_instance_type => value }
          }}
        end

        attr_context :master_public_dns_name do
          let(:data) {{
            :instances => { :master_public_dns_name => value }
          }}
        end

        attr_context :master_instance_id do
          let(:data) {{
            :instances => { :master_instance_id => value }
          }}
        end

        attr_context :slave_instance_type do
          let(:data) {{
            :instances => { :slave_instance_type => value }
          }}
        end

        attr_context :instance_count do
          let(:data) {{
            :instances => { :instance_count => value }
          }}
        end

        attr_context :normalized_instance_hours do
          let(:data) {{
            :instances => { :normalized_instance_hours => value }
          }}
        end

        attr_context :ec2_key_name do
          let(:data) {{
            :instances => { :ec2_key_name => value }
          }}
        end

        attr_context :ec2_subnet_id do
          let(:data) {{
            :instances => { :ec2_subnet_id => value }
          }}
        end

        attr_context :availability_zone_name do
          let(:data) {{
            :instances => { :placement => { :availability_zone => value }}
          }}
        end

        attr_context :keep_job_flow_alive_when_no_steps, :boolean => true do
          let(:data) {{
            :instances => { :keep_job_flow_alive_when_no_steps => value }
          }}
        end

        attr_context :termination_protected, :boolean => true do
          let(:data) {{
            :instances => { :termination_protected => value }
          }}
        end

        attr_context :hadoop_version do
          let(:data) {{
            :instances => { :hadoop_version => value }
          }}
        end

        attr_context :instance_group_details do
          let(:data) {{
            :instances => { :instance_groups => value }
          }}
        end

        attr_context :step_details do
          let(:data) {{
            :steps => value,
          }}
        end

        attr_context :bootstrap_actions

      end

      context '#master_instance' do

        it 'returns an EC2 instance' do
          job_flow.stub(:master_instance_id).and_return('i-12345678')
          job_flow.master_instance.should be_a(EC2::Instance)
        end

        it 'returns an instance with the proper id' do
          job_flow.stub(:master_instance_id).and_return('i-12345678')
          job_flow.master_instance.id.should eq('i-12345678')
        end

        it 'returns an instance with the proper config' do
          job_flow.stub(:master_instance_id).and_return('i-12345678')
          job_flow.master_instance.config.should eq(config)
        end

        it 'returns nil when the master instance id is nil' do
          job_flow.stub(:master_instance_id).and_return(nil)
          job_flow.master_instance.should eq(nil)
        end

      end

      context '#slave_instance' do

        it 'returns an EC2 instance' do
          job_flow.stub(:slave_instance_id).and_return('i-12345678')
          job_flow.slave_instance.should be_a(EC2::Instance)
        end

        it 'returns an instance with the proper id' do
          job_flow.stub(:slave_instance_id).and_return('i-12345678')
          job_flow.slave_instance.id.should eq('i-12345678')
        end

        it 'returns an instance with the proper config' do
          job_flow.stub(:slave_instance_id).and_return('i-12345678')
          job_flow.slave_instance.config.should eq(config)
        end

        it 'returns nil when the slave instance id is nil' do
          job_flow.stub(:slave_instance_id).and_return(nil)
          job_flow.slave_instance.should eq(nil)
        end

      end

      context '#availability_zone' do

        it 'returns an EC2 instance' do
          job_flow.stub(:availability_zone_name).and_return('az-name')
          job_flow.availability_zone.should be_a(EC2::AvailabilityZone)
        end

        it 'returns an instance with the proper name' do
          job_flow.stub(:availability_zone_name).and_return('az-name')
          job_flow.availability_zone.name.should eq('az-name')
        end

        it 'returns an instance with the proper config' do
          job_flow.stub(:availability_zone_name).and_return('az-name')
          job_flow.availability_zone.config.should eq(config)
        end

        it 'returns nil when the slave instance id is nil' do
          job_flow.stub(:availability_zone_name).and_return(nil)
          job_flow.availability_zone.should eq(nil)
        end

      end

      context '#add_steps' do

        it 'calls #add_job_flow_steps on the client' do

          step = double('step')

          client.should_receive(:add_job_flow_steps).with(
            :job_flow_id => job_flow_id,
            :steps => [step]
          ).and_return(client.stub_for(:add_job_flow_steps))

          job_flow.add_steps(step)

        end

        it 'accepts a list of steps' do

          client.should_receive(:add_job_flow_steps).with(
            :job_flow_id => job_flow_id,
            :steps => [1,2,3]
          ).and_return(client.stub_for(:add_job_flow_steps))

          job_flow.add_steps(1,2,3)

        end

        it 'accept an array of steps' do

          client.should_receive(:add_job_flow_steps).with(
            :job_flow_id => job_flow_id,
            :steps => [1,2,3]
          ).and_return(client.stub_for(:add_job_flow_steps))

          job_flow.add_steps([1,2,3])

        end

      end

      context '#instance_groups' do

        it 'returns a collection' do
          job_flow.instance_groups.should be_a(InstanceGroupCollection)
        end

        it 'returns a with the proper job flow' do
          job_flow.instance_groups.job_flow.should eq(job_flow)
        end

        it 'returns a with the proper config' do
          job_flow.instance_groups.config.should eq(config)
        end

      end

      context '#enable_instance_termination_protection' do

        it 'calls #set_termination_protection on the client' do

          client.should_receive(:set_termination_protection).with(
            :termination_protected => true,
            :job_flow_ids => [job_flow_id])

          job_flow.enable_termination_protection

        end

      end

      context '#disable_instance_termination_protection' do

        it 'calls #set_termination_protection on the client' do

          client.should_receive(:set_termination_protection).with(
            :termination_protected => false,
            :job_flow_ids => [job_flow_id])

          job_flow.disable_termination_protection

        end

      end

      context '#set_termination_protection' do

        it 'calls #set_termination_protection on the client' do

          state = double('state')

          client.should_receive(:set_termination_protection).with(
            :termination_protected => state,
            :job_flow_ids => [job_flow_id])

          job_flow.set_termination_protection(state)

        end

      end

      context '#set_visible_to_all_users' do

        it 'calls #set_visible_to_all_users on the client' do

          state = double('state')

          client.should_receive(:set_visible_to_all_users).with(
              :visible_to_all_users => state,
              :job_flow_ids => [job_flow_id])

          job_flow.set_visible_to_all_users(state)

        end

      end

      context '#terminate' do

        it 'should call #terminate_job_flows on the client' do
          client.should_receive(:terminate_job_flows).
            with(:job_flow_ids => [job_flow_id])
          job_flow.terminate
        end

      end

      context '#exists' do

        let(:response) { client.stub_for(:describe_job_flows) }

        before(:each) do
          client.should_receive(:describe_job_flows).
            with(:job_flow_ids => [job_flow.id]).
            and_return(response)
        end

        it 'returns true when it is found in a call to describe job flows' do
          response.data[:job_flows] = [{ :job_flow_id => job_flow.id }]
          job_flow.exists?.should eq(true)
        end

        it 'returns false when it is not found' do
          response.data[:job_flows] = []
          job_flow.exists?.should eq(false)
        end

      end

    end
  end
end

