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
  class EC2
    describe RouteTable do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:route_table) { RouteTable.new('rt-123', :config => config) }

      it_should_behave_like "an ec2 resource object"

      it_should_behave_like "a tagged ec2 item" do
        let(:describe_call) { :describe_route_tables }
        let(:taggable) { route_table }
        def stub_tags(resp, tags)
          resp.data[:route_table_set] = [
            { :route_table_id => 'rt-123', :tag_set => tags },
          ]
        end
      end

      context '#route_table_id' do

        it 'returns the route table id passed in' do
          route_table.route_table_id.should == 'rt-123'
        end

        it 'is aliased as #id' do
          route_table.id.should == route_table.route_table_id
        end

      end

      context '#vpc' do

        it 'returns the vpc' do
          route_table = RouteTable.new('rt-123', :vpc_id => 'vpc-id')
          route_table.vpc.should be_a(VPC)
          route_table.vpc.vpc_id.should == 'vpc-id'
          route_table.vpc.config.should == route_table.config
        end

      end

      context '#create_route' do

        it 'calls #create_route on the client' do
          client.should_receive(:create_route).with(
            :route_table_id => route_table.id,
            :destination_cidr_block => 'cidr-block',
            :gateway_id => 'gateway-id',
            :instance_id => 'instance-id',
            :network_interface_id => 'network-interface-id')

          route_table.create_route('cidr-block',
            :internet_gateway => 'gateway-id',
            :instance => 'instance-id',
            :network_interface => 'network-interface-id')

        end

        it 'accpets objects instead of id strings' do

          gateway = InternetGateway.new('igw-123')
          instance = Instance.new('i-123')
          network_interface = NetworkInterface.new('ni-123')

          client.should_receive(:create_route).with(
            :route_table_id => route_table.id,
            :destination_cidr_block => 'cidr-block',
            :gateway_id => gateway.id,
            :instance_id => instance.id,
            :network_interface_id => network_interface.id)

          route_table.create_route('cidr-block',
            :internet_gateway => gateway,
            :instance => instance,
            :network_interface => network_interface)

        end

      end

      context '#replace_route' do

        it 'calls #replace_route on the client' do
          client.should_receive(:replace_route).with(
            :route_table_id => route_table.id,
            :destination_cidr_block => 'cidr-block',
            :gateway_id => 'gateway-id',
            :instance_id => 'instance-id',
            :network_interface_id => 'network-interface-id')

          route_table.replace_route('cidr-block',
            :internet_gateway => 'gateway-id',
            :instance => 'instance-id',
            :network_interface => 'network-interface-id')

        end

        it 'accpets objects instead of id strings' do

          gateway = InternetGateway.new('igw-123')
          instance = Instance.new('i-123')
          network_interface = NetworkInterface.new('ni-123')

          client.should_receive(:replace_route).with(
            :route_table_id => route_table.id,
            :destination_cidr_block => 'cidr-block',
            :gateway_id => gateway.id,
            :instance_id => instance.id,
            :network_interface_id => network_interface.id)

          route_table.replace_route('cidr-block',
            :internet_gateway => gateway,
            :instance => instance,
            :network_interface => network_interface)

        end

      end

      context '#delete_route' do

        it 'calls #delete_route on the client' do

          client.should_receive(:delete_route).with(
            :route_table_id => route_table.id,
            :destination_cidr_block => 'cidr-block')

          route_table.delete_route('cidr-block')

        end

      end

      context '#delete' do

        it 'calls #delete_route_table on the client' do
          client.should_receive(:delete_route_table).
            with(:route_table_id => route_table.id)
          route_table.delete
        end

      end

      context 'exisitng route tables' do

        let(:response) { client.stub_for(:describe_route_tables) }

        let(:route_set) { [] }

        let(:association_set) { [] }

        before(:each) do
          response.data[:route_table_set] = [
            {
              :route_table_id => route_table.id,
              :vpc_id => 'vpc-id',
              :route_set => route_set,
              :association_set => association_set,
            },
          ]
        end

        context '#vpc' do

          it '#vpc returns the vpc' do
            route_table.vpc.should be_a(VPC)
            route_table.vpc.vpc_id.should == 'vpc-id'
            route_table.vpc.config.should == route_table.config
          end

        end

        context '#main?' do

          it 'returns true if it has an association without a subnet' do
            association_set << {
              :route_table_association_id => 'assoc-id',
              :route_table_id => route_table.id,
              :main => true,
            }
            route_table.main?.should == true
          end

          it 'returns false if all of its associations have a subnet' do
            association_set << {
              :route_table_association_id => 'assoc-id',
              :route_table_id => route_table.id,
              :subnet_id => 'subnet-id',
            }
            route_table.main?.should == false
          end

        end

        context '#subnets' do

          it 'collects subnets from its associations' do

            association_set << {
              :route_table_association_id => 'aid-123',
              :route_table_id => route_table.id,
              :subnet_id => 'subnet-123',
            }

            association_set << {
              :route_table_association_id => 'aid-321',
              :route_table_id => route_table.id,
              :subnet_id => 'subnet-321',
            }

            route_table.subnets.should == [
              Subnet.new('subnet-123', :config => route_table.config),
              Subnet.new('subnet-321', :config => route_table.config),
            ]

          end

        end

        context '#routes' do

          it 'returns an array of route objects' do

            route_set << {
              :destination_cidr_block => 'cidr-block-1',
              :gateway_id => 'igw-123',
              :origin => 'CreateRoute',
              :state => 'active',
            }

            route_set << {
              :destination_cidr_block => 'cidr-block-2',
              :instance_id => 'i-123',
              :instance_owner_id => 'owner-id',
              :origin => 'CreateRouteTable',
              :state => 'pending',
            }

            route_set << {
              :destination_cidr_block => 'cidr-block-3',
              :network_interface_id => 'ni-123',
              :origin => 'EnableVgwRoutePropagation',
              :state => 'foo',
            }

            routes = route_table.routes

            routes[0].destination_cidr_block.should == 'cidr-block-1'
            routes[0].target.should == InternetGateway.new('igw-123', :config => config)
            routes[0].origin.should == :create_route
            routes[0].state.should == :active
            routes[0].target.should == routes[0].internet_gateway

            routes[1].destination_cidr_block.should == 'cidr-block-2'
            routes[1].target.should == Instance.new('i-123', :config => config)
            routes[1].origin.should == :create_route_table
            routes[1].state.should == :pending
            routes[1].target.should == routes[1].instance
            routes[1].instance.owner_id.should == 'owner-id'

            routes[2].destination_cidr_block.should == 'cidr-block-3'
            routes[2].target.should == NetworkInterface.new('ni-123', :config => config)
            routes[2].origin.should == :enable_vgw_route_propagation
            routes[2].state.should == :foo
            routes[2].target.should == routes[2].network_interface

          end

        end

      end
    end
  end
end
