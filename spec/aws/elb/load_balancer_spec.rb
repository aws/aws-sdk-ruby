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
  class ELB
    describe LoadBalancer do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancer) { described_class.new('lb-name', :config => config) }

      it_should_behave_like "a resource object" do
        let(:identifiers)          { %w(name) }
        let(:constructor_args)     { identifiers }
        let(:comparison_instances) { [described_class.new("name2")] }
      end

      let(:response) { client.stub_for(:describe_load_balancers) }

      let(:description) {{ :load_balancer_name => load_balancer.name }}

      before(:each) do
        response.data[:load_balancer_descriptions] = [description]
      end

      context '#initialize' do

        it 'should store the name' do
          load_balancer.name.should == 'lb-name'
        end

        it 'should accpet a symbol name' do
          LoadBalancer.new(:name).name.should == 'name'
        end

      end

      context '#backend_server_policies' do

        it 'returns an backend server policy collection' do
          bsp = load_balancer.backend_server_policies
          bsp.should be_a(BackendServerPolicyCollection)
          bsp.load_balancer.should == load_balancer
          bsp.config.should == config
        end

      end

      context '#listeners' do

        it 'returns an backend server policy collection' do
          listeners = load_balancer.listeners
          listeners.should be_a(ListenerCollection)
          listeners.load_balancer.should == load_balancer
          listeners.config.should == config
        end

      end

      context '#policies' do

        it 'returns an backend server policy collection' do
          policies = load_balancer.policies
          policies.should be_a(LoadBalancerPolicyCollection)
          policies.load_balancer.should == load_balancer
          policies.config.should == config
        end

      end

      context '#instances' do

        it 'returns an backend server policy collection' do
          instances = load_balancer.instances
          instances.should be_a(ELB::InstanceCollection)
          instances.load_balancer.should == load_balancer
          instances.config.should == config
        end

      end

      context '#exists' do

        it 'returns true if the load balancer can be described' do
          client.should_receive(:describe_load_balancers).
            with(:load_balancer_names => [load_balancer.name]).
            and_return(client.stub_for(:describe_load_balancers))
          load_balancer.exists?.should == true
        end

        it 'returns false if an error is raised describing the load balancer' do
          client.should_receive(:describe_load_balancers).
            with(:load_balancer_names => [load_balancer.name]).
            and_raise(AWS::ELB::Errors::LoadBalancerNotFound)
          load_balancer.exists?.should == false
        end

      end

      context '#delete' do

        it 'calls #delete_load_balancer on the client' do
          client.should_receive(:delete_load_balancer).
            with(:load_balancer_name => load_balancer.name)
          load_balancer.delete
        end

      end

      context 'static attributes' do

        let(:response) { client.stub_for(:describe_load_balancers) }

        let(:now) { Time.now }

        before(:each) do
          response.data[:load_balancer_descriptions] = [
            {
              :load_balancer_name => 'lb-name',
              :canonical_hosted_zone_name => 'hosted-zone-name',
              :canonical_hosted_zone_name_id => 'hosted-zone-name-id',
              :created_time => now,
              :dns_name => 'dns-name',
              :source_security_group => {
                :group_name => 'sg-name',
                :owner_alias => 'sg-owner-alias',
              },
            },
          ]
        end

        it 'returns the load balancer name as a string' do
          load_balancer.name.should == 'lb-name'
        end

        it 'returns the canonical hosted zone name as a string' do
          load_balancer.canonical_hosted_zone_name.should == 'hosted-zone-name'
        end

        it 'returns the canonical hosted zone name id as a string' do
          load_balancer.canonical_hosted_zone_name_id.should ==
            'hosted-zone-name-id'
        end

        it 'returns the created time as a Time object' do
          load_balancer.created_time.should == now
        end

        it 'returns the dns name as a string' do
          load_balancer.dns_name.should == 'dns-name'
        end

        it 'hasherizes source security group' do
          load_balancer.source_security_group.should == {
            :group_name => 'sg-name',
            :user_id => 'sg-owner-alias' }
        end

      end

      context '#availability_zones' do

        it 'returns an az collection' do
          load_balancer.availability_zones.should
            be_an(AvailabilityZoneCollection)
        end

        it 'returns an az collection with the proper load balancer' do
          load_balancer.availability_zones.load_balancer.should == load_balancer
        end

        it 'returns an az collection with the proper config' do
          load_balancer.availability_zones.config.should == load_balancer.config
        end

      end

      context '#security_groups' do

        it 'returns an array of security groups' do
          description[:security_groups] = %w(id1 id2)
          load_balancer.security_groups.should eq([
            EC2::SecurityGroup.new('id1', :config => config),
            EC2::SecurityGroup.new('id2', :config => config),
          ])
        end

      end

      context '#subnets' do

        it 'returns an array of subnets groups' do
          description[:subnets] = %w(id1 id2)
          load_balancer.subnets.should eq([
            EC2::Subnet.new('id1', :config => config),
            EC2::Subnet.new('id2', :config => config),
          ])
        end

      end

      context '#scheme' do

       it 'returns the scheme' do
        description[:scheme] = 'scheme-value'
        load_balancer.scheme.should eq('scheme-value')
       end

      end

      context '#availability_zone_names' do

        let(:response) { client.stub_for(:describe_load_balancers) }

        before(:each) do
          response.data[:load_balancer_descriptions] = [
            {
              :load_balancer_name => load_balancer.name,
              :availability_zones => %w(az1 az2 az3),
            },
          ]
        end

        it 'returns an array of strings' do
          load_balancer.availability_zone_names.should == %w(az1 az2 az3)
        end

      end

      context "#source_security_group" do

        let(:response) { client.stub_for(:describe_load_balancers) }

        before(:each) do

          source_sg = {
            :group_name => 'lb-group-name',
            :owner_alias => 'lb-owner-alias' }

          balancer = {
            :load_balancer_name => load_balancer.name,
            :source_security_group => source_sg }

          response.data[:load_balancer_descriptions] = [balancer]

        end

        it 'returns a hash for the group name and owner alias' do
          load_balancer.source_security_group.should ==
            { :group_name => 'lb-group-name', :user_id => 'lb-owner-alias' }
        end

      end

      context 'health check configuration' do

        let(:response) { client.stub_for(:describe_load_balancers) }

        let(:config_a) {{
          :healthy_threshold => 1,
          :unhealthy_threshold => 2,
          :interval => 3,
          :timeout => 4,
          :target => 'TCP:80',
        }}

        let(:config_b) {{
          :healthy_threshold => 2,
          :unhealthy_threshold => 3,
          :interval => 4,
          :timeout => 5,
          :target => 'HTTP:443',
        }}

        let(:balancer_description) {{
          :load_balancer_name => load_balancer.name,
          :health_check => config_a,
        }}

        before(:each) do
          response.data[:load_balancer_descriptions] = [balancer_description]
        end

        context '#health_check_configuration' do

          it 'returns a hash with the correct details' do
            load_balancer.health_check_configuration.should == {
              :healthy_threshold => 1,
              :unhealthy_threshold => 2,
              :interval => 3,
              :timeout => 4,
              :target => 'TCP:80'
            }
          end

        end

        context '#configure_health_check' do

          it 'gets the current health check and merges options' do
            client.should_receive(:configure_health_check).with(
              :load_balancer_name => load_balancer.name,
              :health_check => {
                :healthy_threshold => 1,
                :unhealthy_threshold => 2,
                :interval => 5, # the modified value
                :timeout => 4,
                :target => 'TCP:80',
              }
            )
            load_balancer.configure_health_check(:interval => 5)
          end

          it 'returns a health check configuration hash' do
            config = load_balancer.configure_health_check(:interval => 5)
            config.should == {
              :healthy_threshold => 1,
              :unhealthy_threshold => 2,
              :interval => 5,
              :timeout => 4,
              :target => 'TCP:80',
            }
          end

        end

      end

    end
  end
end
