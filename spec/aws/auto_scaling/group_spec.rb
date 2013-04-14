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
require 'base64'

module AWS
  class AutoScaling
    describe Group do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:ec2_client) { config.ec2_client }

      let(:group) { Group.new('name', :config => config) }

      let(:response) { client.stub_for(:describe_auto_scaling_groups) }

      let(:now) { Time.now }

      let(:details) {
        {
          :auto_scaling_group_name => group.name,
          :auto_scaling_group_arn => 'arn',
          :availability_zones => %w(us-east-1a us-east-1b),
          :created_time => now,
          :default_cooldown => 10,
          :desired_capacity => 2,
          :enabled_metrics => [
            { :metric => 'metric1', :granularity => 'gran1' },
            { :metric => 'metric2', :granularity => 'gran2' },
          ],
          :health_check_grace_period => 100,
          :health_check_type => 'EC2',
          :instances => [
            {
              :instance_id => "i-4973362d",
              :health_status => "Healthy",
              :launch_configuration_name => "name",
              :availability_zone => "us-east-1a",
              :lifecycle_state => "InService",
            }
          ],
          :launch_configuration_name => 'lc-name',
          :load_balancer_names => %w(lb1-name lb2-name),
          :min_size => 1,
          :max_size => 3,
          :placement_group => 'pg',
          :suspended_processes => [
            { :process_name => 'name1', :suspension_reason => 'reason1' },
            { :process_name => 'name2', :suspension_reason => 'reason2' },
          ],
          :tags => [
            {
              :resource_type => "auto-scaling-group",
              :resource_id => group.name,
              :key => "tag1",
              :propagate_at_launch => true
            },
            {
              :resource_type => "auto-scaling-group",
              :resource_id => group.name,
              :key => "tag2",
              :value => "value2",
              :propagate_at_launch => false,
            },
          ],
          :vpc_zone_identifier => 'subnet1-id,subnet2-id'
        }
      }

      before(:each) do
        response.data[:auto_scaling_groups] = [details]
        client.stub(:describe_auto_scaling_groups).and_return(response)
      end

      context '#name' do

        it 'is set in the constructor' do
          Group.new('name').name.should == 'name'
        end

      end

      context 'attributes' do

        it 'returns attributes from the describe call' do

          client.should_receive(:describe_auto_scaling_groups).
            with(:auto_scaling_group_names => [group.name]).
            and_return(response)

          group.arn.should == 'arn'
          group.availability_zone_names.should == %w(us-east-1a us-east-1b)
          group.created_time.should == now
          group.default_cooldown.should == 10
          group.desired_capacity.should == 2
          group.enabled_metrics.should == {
            'metric1' => 'gran1',
            'metric2' => 'gran2',
          }
          group.health_check_grace_period.should == 100
          group.health_check_type.should == :ec2
          group.auto_scaling_instances.should == [
            Instance.new("i-4973362d", :config => config),
          ]
          group.launch_configuration.name.should == 'lc-name'
          group.load_balancer_names.should == %w(lb1-name lb2-name)
          group.min_size.should == 1
          group.max_size.should == 3
          group.placement_group.should == 'pg'
          group.suspended_processes.should == {
            'name1' => 'reason1',
            'name2' => 'reason2',
          }
        end

      end

      context '#tags' do

        it 'returns array of tag objects' do
          group.tags.should == [
            {
              :resource_type => "auto-scaling-group",
              :resource_id => group.name,
              :key => "tag1",
              :propagate_at_launch => true
            },
            {
              :resource_type => "auto-scaling-group",
              :resource_id => group.name,
              :key => "tag2",
              :value => "value2",
              :propagate_at_launch => false,
            },
          ]
          group.tags.each{|t| t.resource.should == group }
        end

      end

      context '#launch_configuration' do

        it 'returns a launch configuration' do
          lc = group.launch_configuration
          lc.should be_a(LaunchConfiguration)
          lc.name.should == 'lc-name'
          lc.config.should == group.config
        end

      end

      context '#ec2_instances' do

        it 'returns a filtered instance collection' do
          ec2_instances = group.ec2_instances
          ec2_instances.should be_a(EC2::InstanceCollection)
          ec2_instances.config.should == group.config
        end

        it 'filters the collection by the correct tag' do
          inst_resp = ec2_client.stub_for(:describe_instances)
          ec2_client.should_receive(:describe_instances).
            with(:filters=>[
              { :name => "tag-key", :values => ["aws:autoscaling:groupName"] },
              { :name => "tag-value", :values => [group.name] },
            ]).and_return(inst_resp)

          group.ec2_instances.to_a

        end

      end

      context '#scheduled_actions' do

        it 'returns a scheduled action collection' do
          actions = group.scheduled_actions
          actions.should be_a(AutoScaling::ScheduledActionCollection)
          actions.config.should == config
        end

        it 'does not filter the actions (returns all)' do
          resp = client.stub_for(:describe_scheduled_actions)
          client.should_receive(:describe_scheduled_actions).
            with(:auto_scaling_group_name => group.name).
            and_return(resp)
          group.scheduled_actions.to_a
        end

      end

      context '#subnets' do

        it 'returns an array of subnets' do
          subnets = group.subnets
          subnets.count.should == 2
          subnets.each{|s| s.should be_a(EC2::Subnet) }
          subnets.each{|s| s.config.should == group.config }
          subnets.map(&:id).should == %w(subnet1-id subnet2-id)
        end

      end

      context '#availability_zones' do

        it 'returns an array of availability zone objects' do
          zones = group.availability_zones
          zones.should == [
            EC2::AvailabilityZone.new('us-east-1a', :config => group.config),
            EC2::AvailabilityZone.new('us-east-1b', :config => group.config),
          ]
        end

      end

      context '#load_balancers' do

        it 'returns an array of load balancer objects' do

          lbs = group.load_balancers
          lbs.should == [
            ELB::LoadBalancer.new('lb1-name', :config => group.config),
            ELB::LoadBalancer.new('lb2-name', :config => group.config),
          ]
        end

      end

      context '#update' do

        it 'calls #update_auto_scaling_group on the client' do
          client.should_receive(:update_auto_scaling_group).with(
            :auto_scaling_group_name => group.name,
            :min_size => 1)
          group.update(:min_size => 1)
        end

        it 'accepts multiple options' do
          client.should_receive(:update_auto_scaling_group).with(
            :auto_scaling_group_name => group.name,
            :availability_zones => %w(az1 az2),
            :vpc_zone_identifier => 'subnet1-id,subnet2-id',
            :max_size => 3
          )
          group.update(
            :availability_zones => [
              EC2::AvailabilityZone.new('az1'),
              EC2::AvailabilityZone.new('az2'),
            ],
            :subnets => ['subnet1-id', EC2::Subnet.new('subnet2-id') ],
            :max_size => 3
          )
        end

      end

      context '#delete_tags' do

        it '#calls delete_tags on the client' do
          client.should_receive(:delete_tags).with(:tags => [
            {
              :resource_type => 'auto-scaling-group',
              :resource_id => group.name,
              :key => 'abc',
              :propagate_at_launch => false,
            },
          ])
          group.delete_tags([
            { :key => 'abc', :propagate_at_launch => false },
          ])
        end

        it 'accpets multiple tags' do
          client.should_receive(:delete_tags).with(:tags => [
            {
              :resource_type => 'auto-scaling-group',
              :resource_id => group.name,
              :key => 'abc',
              :propagate_at_launch => false,
            },
            {
              :resource_type => 'auto-scaling-group',
              :resource_id => group.name,
              :key => 'mno',
              :value => 'xyz',
              :propagate_at_launch => true,
            },
          ])
          group.delete_tags([
            { :key => 'abc', :propagate_at_launch => false },
            { :key => 'mno', :value => 'xyz', :propagate_at_launch => true },
          ])
        end

        it 'accpets tag objects' do
          tags = []
          tags << Tag.new(
            :resource_type => 'auto-scaling-group',
            :resource_id => group.name,
            :key => 'abc',
            :propagate_at_launch => false)
          tags << Tag.new(
            :resource_type => 'auto-scaling-group',
            :resource_id => group.name,
            :key => 'mno',
            :value => 'xyz',
            :propagate_at_launch => true)
          client.should_receive(:delete_tags).with(:tags => tags.map(&:to_hash))
          group.delete_tags(*tags)
        end

      end

      context '#delete_all_tags' do

        it 'calls #delete_tags with the group tags' do
          client.should_receive(:delete_tags).
            with(:tags => group.tags.map(&:to_hash))
          group.delete_all_tags
        end

      end

      context '#delete' do

        it 'calls #delete_auto_scaling_group on the client' do
          client.should_receive(:delete_auto_scaling_group).with(
            :auto_scaling_group_name => group.name,
            :force_delete => false)
          group.delete
        end

        it 'accepts a :force option' do
          client.should_receive(:delete_auto_scaling_group).with(
            :auto_scaling_group_name => group.name,
            :force_delete => true)
          group.delete :force => true
        end

      end

      context '#delete!' do

        it 'calls #delete_auto_scaling_group on the client with :force' do
          client.should_receive(:delete_auto_scaling_group).with(
            :auto_scaling_group_name => group.name,
            :force_delete => true)
          group.delete!
        end

      end

      context '#exists?' do

        let(:response) { client.stub_for(:describe_auto_scaling_groups) }

        before(:each) do
          client.stub(:describe_auto_scaling_groups).and_return(response)
        end

        it 'returns false if it can not describe it' do
          response.data[:auto_scaling_groups] = [] # empty
          group.exists?.should == false
        end

        it 'returns true if it can describe it' do
          response.data[:auto_scaling_groups] = [
            { :auto_scaling_group_name => 'name' },
          ]
          group.exists?.should == true
        end

      end

      context '#set_desired_capacity' do

        it 'calls #set_desired_capacity on the client' do
          client.should_receive(:set_desired_capacity).with(
            :auto_scaling_group_name => group.name,
            :desired_capacity => 3,
            :honor_cooldown => false)
          group.set_desired_capacity 3
        end

        it 'accepts an honor cooldown option' do
          client.should_receive(:set_desired_capacity).with(
            :auto_scaling_group_name => group.name,
            :desired_capacity => 4,
            :honor_cooldown => true)
          group.set_desired_capacity 4, :honor_cooldown => true
        end

      end

      context '#scaling_policies' do

        it 'retunrs a scaling policy collection' do
          collection = group.scaling_policies
          collection.should be_a(ScalingPolicyCollection)
          collection.group.should == group
          collection.config.should == config
        end

      end

      context '#notification_configurations' do

        it 'retunrs a notification configuration collection' do
          collection = group.notification_configurations
          collection.should be_a(NotificationConfigurationCollection)
          collection.group.should == group
          collection.config.should == config
        end

      end

      context '#suspend_processes' do

        it 'calls #suspend_processes on the client' do
          client.should_receive(:suspend_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => %w(abc))
          group.suspend_processes 'abc'
        end

        it 'accepts mutiple process types' do
          client.should_receive(:suspend_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => %w(abc xyz))
          group.suspend_processes 'abc', 'xyz'
        end

        it 'accepts an array of process types' do
          client.should_receive(:suspend_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => %w(abc xyz))
          group.suspend_processes ['abc', 'xyz']
        end

      end

      context '#suspend_all_processes' do

        it 'calls #suspend_processes on the client with no processes' do
          client.should_receive(:suspend_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => [])
          group.suspend_all_processes
        end

      end

      context '#resume_processes' do

        it 'calls #resume_processes on the client' do
          client.should_receive(:resume_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => %w(abc))
          group.resume_processes 'abc'
        end

        it 'accepts mutiple process types' do
          client.should_receive(:resume_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => %w(abc xyz))
          group.resume_processes 'abc', 'xyz'
        end

        it 'accepts an array of process types' do
          client.should_receive(:resume_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => %w(abc xyz))
          group.resume_processes ['abc', 'xyz']
        end

      end

      context '#resume_all_processes' do

        it 'calls #resume_processes on the client with no processes' do
          client.should_receive(:resume_processes).with(
            :auto_scaling_group_name => group.name,
            :scaling_processes => [])
          group.resume_all_processes
        end

      end

    end
  end
end
