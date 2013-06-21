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
    describe GroupCollection do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:groups) { GroupCollection.new(:config => config) }

      let(:create_opts) {{
        :launch_configuration => 'lc-name',
        :availability_zones => %w(us-east-1a),
        :min_size => 1,
        :max_size => 2,
      }}

      context '#create' do

        it 'calls #create_auto_scaling_group on the client' do

          client.should_receive(:create_auto_scaling_group).with(
            :auto_scaling_group_name => 'name',
            :launch_configuration_name => 'lc-name',
            :availability_zones => %w(us-east-1a),
            :min_size => 1,
            :max_size => 2)

          groups.create('name',
            :launch_configuration => 'lc-name',
            :availability_zones => %w(us-east-1a),
            :min_size => 1,
            :max_size => 2)

        end

        it 'accepts az objects and launch configuration objects' do

          azs = [
            EC2::AvailabilityZone.new('az1-name'),
            EC2::AvailabilityZone.new('az2-name'),
          ]

          lc = LaunchConfiguration.new('lc-name')

          client.should_receive(:create_auto_scaling_group).with(
            :auto_scaling_group_name => 'name',
            :launch_configuration_name => lc.name,
            :availability_zones => azs.map(&:name),
            :min_size => 1,
            :max_size => 2)

          groups.create('name',
            :launch_configuration => lc,
            :availability_zones => azs,
            :min_size => 1,
            :max_size => 2)

        end

        it 'raises an argument error if you omit :launch_configuration' do
          lambda {
            groups.create('name',
              :availability_zones => %w(us-east-1a),
              :min_size => 1,
              :max_size => 2)
          }.should raise_error(ArgumentError, /:launch_configuration/)
        end

        it 'raises an argument error if you omit :min_size' do
          lambda {
            groups.create('name',
              :launch_configuration => 'lc-name',
              :availability_zones => %w(us-east-1a),
              :max_size => 2)
          }.should raise_error(ArgumentError, /min_size/)
        end

        it 'raises an argument error if you omit :max_size' do
          lambda {
            groups.create('name',
              :launch_configuration => 'lc-name',
              :availability_zones => %w(us-east-1a),
              :min_size => 1)
          }.should raise_error(ArgumentError, /max_size/)
        end

        it 'accepts a default cooldown period' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :default_cooldown => 10))
          groups.create('name', create_opts.merge(:default_cooldown => 10))
        end

        it 'accepts desired capacity' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :desired_capacity => 1))
          groups.create('name', create_opts.merge(:desired_capacity => 1))
        end

        it 'accepts a health check grace period' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :health_check_grace_period => 123))
          groups.create('name', create_opts.merge(
            :health_check_grace_period => 123))
        end

        it 'accepts a health check type' do

          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :health_check_type => 'EC2'))
          groups.create('name', create_opts.merge(
            :health_check_type => :ec2))

          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :health_check_type => 'ELB'))
          groups.create('name', create_opts.merge(
            :health_check_type => :elb))

        end

        it 'accepts a health check grace period' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :health_check_grace_period => 123))
          groups.create('name', create_opts.merge(
            :health_check_grace_period => 123))
        end

        it 'accepts load balancers' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :load_balancer_names => %w(lb1-name lb2-name)))
          groups.create('name', create_opts.merge(
            :load_balancers => %w(lb1-name lb2-name)))
        end

        it 'accepts load balancer objects' do

          lbs = []
          lbs << ELB::LoadBalancer.new('lb1-name')
          lbs << ELB::LoadBalancer.new('lb2-name')

          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :load_balancer_names => lbs.map(&:name)))

          groups.create('name', create_opts.merge(
            :load_balancers => lbs.map(&:name)))

        end

        it 'accepts a placement group' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :placement_group => 'abc'))
          groups.create('name', create_opts.merge(
            :placement_group => 'abc'))
        end

        it 'accepts termination policies' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :termination_policies => [
              "Default",
              "OldestInstance",
            ]))
          groups.create('name', create_opts.merge(
            :termination_policies => [
              "Default",
              "OldestInstance",
            ]))
 
        end

        it 'accepts tags' do

          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :tags => [
              { :key => 'tag1',                     :propagate_at_launch => true  },
              { :key => 'tag2', :value => 'value2', :propagate_at_launch => true  },
              { :key => 'tag3', :value => 'value3', :propagate_at_launch => true  },
              { :key => 'tag4', :value => 'value4', :propagate_at_launch => false },
          ]))

          groups.create('name', create_opts.merge(:tags => [
            { :key => 'tag1' },
            { :key => 'tag2', :value => 'value2' },
            { :key => 'tag3', :value => 'value3', :propagate_at_launch => true },
            { :key => 'tag4', :value => 'value4', :propagate_at_launch => false },
          ]))

        end

        it 'accepts subnets' do
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :vpc_zone_identifier => 'subnet1,subnet2'))
          groups.create('name', create_opts.merge(
            :subnets => %w(subnet1 subnet2)))
        end

        it 'accepts subnet objects' do
          subnets = []
          subnets << EC2::Subnet.new('subnet1')
          subnets << EC2::Subnet.new('subnet2')
          client.should_receive(:create_auto_scaling_group).with(hash_including(
            :vpc_zone_identifier => subnets.map(&:id).join(',')))
          groups.create('name', create_opts.merge(
            :subnets => subnets))
        end

        it 'returns a group with the given name' do
          group = groups.create('name', create_opts)
          group.should be_a(Group)
          group.name.should == 'name'
          group.config.should == config
        end

      end

      context '#[]' do

        it 'returns a group 'do
          group = groups['name']
          group.should be_a(Group)
          group.name.should == 'name'
          group.config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { groups }
        let(:client_method)   { :describe_auto_scaling_groups }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:auto_scaling_groups] = (1..n).map{|i|
            { :auto_scaling_group_name => i.to_s }
          }
        end

      end

    end
  end
end
