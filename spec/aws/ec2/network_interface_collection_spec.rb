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
    describe NetworkInterfaceCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { NetworkInterface }

        let(:client_method) { :describe_network_interfaces }

        def stub_two_members(resp)
          resp.data[:network_interface_set] = [
            {
              :network_interface_id => 'ni-123',
              :vpc_id => 'vpc-id',
              :subnet_id => 'subnet-id',
            }, {
              :network_interface_id => 'ni-321',
              :vpc_id => 'vpc-id',
              :subnet_id => 'subnet-id',
            },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:network_interfaces) { collection }

        context '#each' do

          it 'yields network interfaces' do
            nis = network_interfaces.to_a
            nis[0].should be_a(NetworkInterface)
            nis[0].network_interface_id.should == 'ni-123'
            nis[0].vpc.should == VPC.new('vpc-id', :config => config)
            nis[0].subnet.should == Subnet.new('subnet-id', :config => config)
            nis[1].should be_a(NetworkInterface)
            nis[1].network_interface_id.should == 'ni-321'
            nis[1].vpc.should == VPC.new('vpc-id', :config => config)
            nis[1].subnet.should == Subnet.new('subnet-id', :config => config)
          end

        end

        context '#[]' do

          it 'returns a network interface' do
            ni = network_interfaces['ni-id']
            ni.should be_a(NetworkInterface)
            ni.network_interface_id.should == 'ni-id'
            ni.config.should == config
          end

        end

        context '#create' do

          let(:details) {{
            :network_interface_id => 'ni-id',
            :vpc_id => 'vpc-12345',
            :subnet_id => 'subnet-12345',
            :description => 'desc',
            :owner_id => 'owner-id',
            :status => 'pending',
            :private_ip_address => '1.2.3.4',
            :private_dns_name => 'private-dns-name',
            :source_dest_check => true,
            :group_set => [],
          }}

          let(:response) { client.stub_for(:create_network_interface) }

          before(:each) do
            response.data[:network_interface] = details
            client.stub(:create_network_interface).and_return(response)
          end

          it 'calls #create_network_interface on the client' do
            client.should_receive(:create_network_interface).
              with(:subnet_id => 'subnet-id').
              and_return(response)
            network_interfaces.create(:subnet_id => 'subnet-id')
          end

          it 'accepts a subnet as a string' do
            client.should_receive(:create_network_interface).
              with(:subnet_id => 'subnet-id').
              and_return(response)
            network_interfaces.create(:subnet => 'subnet-id')
          end

          it 'accpets a subnet' do
            client.should_receive(:create_network_interface).
              with(:subnet_id => 'subnet-id').
              and_return(response)
            network_interfaces.create(:subnet => Subnet.new('subnet-id'))
          end

          it 'can get a subnet id from the collection' do
            client.should_receive(:create_network_interface).
              with(:subnet_id => 'subnet-id').
              and_return(response)
            subnet = Subnet.new('subnet-id', :config => config)
            subnet.network_interfaces.create
          end

          it 'accepts a private ip address' do
            client.should_receive(:create_network_interface).with(
              :subnet_id => 'subnet-id',
              :private_ip_address => 'private-ip'
            ).and_return(response)
            network_interfaces.create(
              :subnet => 'subnet-id',
              :private_ip_address => 'private-ip')
          end

          it 'accepts a description' do
            client.should_receive(:create_network_interface).with(
              :subnet_id => 'subnet-id',
              :description => 'description'
            ).and_return(response)
            network_interfaces.create(
              :subnet => 'subnet-id',
              :description => 'description')
          end

          it 'accepts security group ids' do
            client.should_receive(:create_network_interface).with(
              :subnet_id => 'subnet-id',
              :groups => %w(sg-1 sg-2)
            ).and_return(response)
            network_interfaces.create(
              :subnet => 'subnet-id',
              :security_groups => %w(sg-1 sg-2))
          end

          it 'accepts security group objects' do

            groups = []
            groups << SecurityGroup.new('sg-1')
            groups << SecurityGroup.new('sg-2')

            client.should_receive(:create_network_interface).with(
              :subnet_id => 'subnet-id',
              :groups => groups.map(&:id)
            ).and_return(response)

            network_interfaces.create(
              :subnet => 'subnet-id',
              :security_groups => groups)

          end

          it 'returns a network interface' do
            ni = network_interfaces.create(:subnet => 'subnet-id')
            ni.should be_a(NetworkInterface)
            ni.id.should == 'ni-id'
            ni.config.should == config
          end

        end
      end
    end
  end
end
