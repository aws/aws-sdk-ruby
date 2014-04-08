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
  class AutoScaling
    describe Instance do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:instance) { Instance.new('id', :config => config) }

      let(:response) { client.stub_for(:describe_auto_scaling_instances) }

      let(:details) {{
        :instance_id => instance.instance_id,
        :auto_scaling_group_name => 'group',
        :availability_zone => 'az-name',
        :health_status => 'Healthy',
        :launch_configuration_name => 'launch-config',
        :lifecycle_state => 'state',
      }}

      before(:each) do
        response.data[:auto_scaling_instances] = [details]
        client.stub(:describe_auto_scaling_instances).and_return(response)
      end

      context '#ec2_instance' do

        it 'returns a EC2::Instance' do
          instance.ec2_instance.should be_an(EC2::Instance)
        end

        it 'returns an instance with the proper id' do
          instance.ec2_instance.instance_id.should == 'id'
          instance.config.should == config
        end

        it 'returns an instance with the proper config' do
          instance.ec2_instance.config.should == config
        end

      end

      context '#auto_scaling_group' do

        it 'returns an Auto Scaling group' do
          instance.group.should be_a(Group)
        end

        it 'returns a group with the proper name' do
          instance.group.name.should == 'group'
        end

        it 'returns a group with the proper config' do
          instance.group.config.should == config
        end

      end

      context '#availability_zone' do

        it 'returns an ec2 availabilty zone' do
          instance.availability_zone.should be_an(EC2::AvailabilityZone)
        end

        it 'returns an az with the proper name' do
          instance.availability_zone.name.should == 'az-name'
        end

        it 'returns an az with the proper config' do
          instance.availability_zone.config.should == config
        end

      end

      context '#launch_configuration' do

        it 'returns a launch configuration' do
          instance.launch_configuration.should be_a(LaunchConfiguration)
        end

        it 'returns a launch config with the proper name' do
          instance.launch_configuration.name.should == 'launch-config'
        end

        it 'returns a launch config with the proper config' do
          instance.launch_configuration.config.should == config
        end

      end

      context '#set_instance_health' do

        it 'calls #set_instance_health on the client' do
          client.should_receive(:set_instance_health).with(
            :instance_id => instance.id,
            :health_status => 'Unhealthy',
            :should_respect_grace_period => false)
          instance.set_health 'Unhealthy'
        end

        it 'accepts a :respect_grace_period option' do
          client.should_receive(:set_instance_health).with(
            :instance_id => instance.id,
            :health_status => 'Healthy',
            :should_respect_grace_period => true)
          instance.set_health 'Healthy', :respect_grace_period => true
        end

      end

      context '#exists?' do

        let(:resp) { client.stub_for(:describe_auto_scaling_instances) }

        before(:each) do
          client.stub(:describe_auto_scaling_instances).and_return(resp)
        end

        it 'returns true when it can be described' do
          resp.data[:auto_scaling_instances] = [{}] # not empty
          instance.exists?.should == true
        end

        it 'returns false when it does not come back from describe' do
          resp.data[:auto_scaling_instances] = [] # empty
          instance.exists?.should == false
        end

      end

      context '#terminate' do

        let(:resp) { client.stub_for(:terminate_instance_in_auto_scaling_group) }

        let(:now) { Time.now }

        before(:each) do
          resp.data[:activity] = {
            :activity_id => 'aid',
            :auto_scaling_group_name => 'group',
            :cause => 'cause',
            :description => 'description',
            :details => 'details',
            :start_time => now,
            :end_time => now,
            :progress => 100,
            :status_code => 'code',
            :status_message => 'message',
          }
        end

        it 'calls #terminate_instance_in_auto_scaling_group on the client' do
          client.should_receive(:terminate_instance_in_auto_scaling_group).with(
            :instance_id => instance.id,
            :should_decrement_desired_capacity => true
          ).and_return(resp)
          instance.terminate(true)
        end

        it 'accepts a false value for should decrement' do
          client.should_receive(:terminate_instance_in_auto_scaling_group).with(
            :instance_id => instance.id,
            :should_decrement_desired_capacity => false
          ).and_return(resp)
          instance.terminate(false)
        end

        it 'returns a populated Activty' do

          client.should_not_receive(:describe_scaling_activities)

          activity = instance.terminate(false)
          activity.activity_id.should == 'aid'
          activity.group.should == Group.new('group', :config => config)
          activity.cause.should == 'cause'
          activity.description.should == 'description'
          activity.start_time.should == now

        end

      end

      context 'populating from auto scaling group' do

        let(:resp) { client.stub_for(:describe_auto_scaling_groups) }

        let(:group) { Group.new('name', :config => config) }

        let(:instance_details) {{
          :instance_id => 'id',
          #:auto_scaling_group_name => -- not provided by the resp
          :availability_zone => 'az-name',
          :health_status => 'Healthy',
          :launch_configuration_name => 'launch-config',
          :lifecycle_state => 'state',
        }}

        before(:each) do
          resp.data[:auto_scaling_groups] = [
            {
              :auto_scaling_group_name => group.name,
              :instances => [instance_details],
            }
          ]
        end

        it 'can be populated from describing a group' do
          client.should_receive(:describe_auto_scaling_groups).and_return(resp)
          AWS.memoize do
            instance = group.auto_scaling_instances.first
            instance.should be_a(Instance)
            instance.id.should == 'id'
            instance.group.should == group
            instance.availability_zone_name.should == 'az-name'
            instance.health_status.should == 'Healthy'
            instance.launch_configuration_name.should == 'launch-config'
            instance.lifecycle_state.should == 'state'
          end
        end

      end

    end
  end
end
