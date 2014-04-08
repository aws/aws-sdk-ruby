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
    describe Subnet do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:subnet) { Subnet.new("subnet-12345", :config => config) }

      let(:vpc) { VPC.new('vpc-12345', :config => config) }

      it_should_behave_like "an ec2 resource object"

      context '#subnet_id' do

        it 'returns the id passed in' do
          subnet.subnet_id.should == 'subnet-12345'
        end

        it 'is aliased as #id' do
          subnet.id.should == subnet.subnet_id
        end

      end

      context '#delete' do

        it 'calls #delete_subnet on the client' do
          client.should_receive(:delete_subnet).with(:subnet_id => subnet.id)
          subnet.delete
        end

        it 'returns nil' do
          subnet.delete.should == nil
        end

      end

      context 'subnet attributes' do

        let(:response) { client.stub_for(:describe_subnets) }

        let(:subnet_details) {{
          :subnet_id => 'subnet-12345',
          :vpc_id => 'vpc-12345',
          :state => 'available',
          :cidr_block => '10.0.0.0/16',
          :available_ip_address_count => 50,
          :availability_zone => 'us-east-1d',
        }}

        before(:each) do
          response.data[:subnet_set] = [subnet_details]
          client.stub(:describe_subnets).and_return(response)
        end

        context '#vpc_id' do

          it 'returns the vpc id passed in' do
            client.should_not_receive(:describe_subnets)
            subnet = Subnet.new('subnet-12345', :vpc_id => 'abc')
            subnet.vpc_id.should == 'abc'
          end

          it 'calls describe_subnets when not passed in' do
            client.should_receive(:describe_subnets).
              with(:subnet_ids => ['subnet-12345']).
              and_return(response)
            subnet.vpc_id.should == 'vpc-12345'
          end

        end

        context '#vpc' do

          it 'returns the vpc passed in' do
            client.should_not_receive(:describe_subnets)
            subnet = Subnet.new('subnet-12345', :vpc_id => vpc.id, :config => config)
            subnet.vpc.should == vpc
          end

          it 'calls describe_subnets when not passed in' do
            client.should_receive(:describe_subnets).
              with(:subnet_ids => ['subnet-12345']).
              and_return(response)
            subnet.vpc.id.should == 'vpc-12345'
          end

        end

        context '#state' do

          it 'is returned as a symbol' do
            subnet.state.should == :available
          end

        end

        context '#cidr_block' do

          it 'is returned as a string' do
            subnet.cidr_block == '10.0.0.0/16'
          end

        end

        context '#available_ip_address_count' do

          it 'is returned as an integer' do
            subnet.available_ip_address_count.should == 50
          end

        end

        context '#availability_zone_name' do

          it 'is returned as a string' do
            subnet.availability_zone_name.should == 'us-east-1d'
            subnet.availability_zone.should ==
              AvailabilityZone.new('us-east-1d', :config => config)
          end

        end

        context 'route table' do

          let(:response) { client.stub_for(:describe_route_tables) }

          before(:each) do
            response.data[:route_table_set] = [
              {
                :route_table_id => 'route-table-id-1',
                :association_set => [
                  {
                    :route_table_association_id => 'rta-123',
                    :route_table_id => 'route-table-id-1',
                    :subnet_id => 'subnet-1' },
                  {
                    :route_table_association_id => 'rta-321',
                    :route_table_id => 'route-table-id-1',
                    :subnet_id => 'subnet-2' }
                ],
              }, {
                :route_table_id => 'route-table-id-2',
                :association_set => [
                  { :route_table_association_id => 'rta-456',
                    :route_table_id => 'route-table-id-2',
                    :main => true, }
                ]
              },
            ]
          end

          context 'getting the route table' do

            it 'describes route tables and finds itself' do
              subnet = Subnet.new('subnet-1',
                :vpc_id => 'vpc-id',
                :config => config)
              subnet.route_table.should ==
                RouteTable.new('route-table-id-1', :config => config)
            end

            it 'returns the default route table if there is no association' do
              subnet = Subnet.new('subnet-3',
                :vpc_id => 'vpc-id',
                :config => config)
              subnet.route_table.should ==
                RouteTable.new('route-table-id-2', :config => config)
            end

          end

          context 'setting the route table' do

            let(:route_table) {
              RouteTable.new('other-route-table', :config => config)
            }

            context 'a subnet without a route table association' do

              it 'calls #associate_route_table on the client' do

                resp = client.stub_for(:associate_route_table)
                resp.data[:association_id] = 'assoc-id'

                client.should_receive(:associate_route_table).with(
                  :route_table_id => route_table.id,
                  :subnet_id => 'subnet-3').and_return(resp)

                subnet = Subnet.new('subnet-3',
                  :vpc_id => 'vpc-id',
                  :config => config)

                assoc = subnet.set_route_table(route_table)
                assoc.should be_a(RouteTable::Association)
                assoc.route_table.should == route_table
                assoc.association_id.should == 'assoc-id'
                assoc.main?.should == false
                assoc.subnet.should == subnet

              end

            end

            context 'a subnet with an existing route table association' do

              it 'calls #replace_route_table_association on the client' do

                resp = client.stub_for(:replace_route_table_association)
                resp.data[:new_association_id] = 'assoc-id'

                client.should_receive(:replace_route_table_association).with(
                  :association_id => 'rta-321',
                  :route_table_id => route_table.id).and_return(resp)

                subnet = Subnet.new('subnet-2',
                  :vpc_id => 'vpc-id',
                  :config => config)

                assoc = subnet.set_route_table(route_table)
                assoc.should be_a(RouteTable::Association)
                assoc.route_table.should == route_table
                assoc.association_id.should == 'assoc-id'
                assoc.main?.should == false
                assoc.subnet.should == subnet

              end

            end

          end

        end

      end

    end
  end
end
