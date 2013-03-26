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
    describe SubnetCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { Subnet }

        let(:client_method) { :describe_subnets }

        def stub_two_members(resp)
          resp.data[:subnet_set] = [
            {
              :subnet_id => 'subnet-1',
              :vpc_id => 'vpc-1',
              :state => 'available',
              :cidr_block => '192.0.0.0/16',
              :available_ip_address_count => 256,
              :availability_zone => 'us-east-1a',
            },{
              :subnet_id => 'subnet-2',
              :vpc_id => 'vpc-2',
              :state => 'available',
              :cidr_block => '192.0.0.0/20',
              :available_ip_address_count => 50,
              :availability_zone => 'us-east-1b',
            },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:subnets) { collection }

        let(:vpc) { VPC.new('vpc-123456', :config => config) }

        context '#each' do

          it 'yields populated subnets' do
            subnets = collection.to_a
            subnets[0].subnet_id.should == 'subnet-1'
            subnets[0].vpc.id.should == 'vpc-1'
            subnets[0].state.should == :available
            subnets[0].cidr_block.should == '192.0.0.0/16'
            subnets[0].available_ip_address_count.should == 256
            subnets[0].availability_zone_name.should == 'us-east-1a'
            subnets[1].subnet_id.should == 'subnet-2'
            subnets[1].vpc.id.should == 'vpc-2'
            subnets[1].state.should == :available
            subnets[1].cidr_block.should == '192.0.0.0/20'
            subnets[1].available_ip_address_count.should == 50
            subnets[1].availability_zone_name.should == 'us-east-1b'
          end

        end

        context '#[]' do

          it 'returns a subnet with the correct config' do
            subnets = SubnetCollection.new(:config => config)
            subnet = subnets['subnet-id']
            subnet.should be_a(Subnet)
            subnet.subnet_id.should == 'subnet-id'
            subnet.config.should == config
          end

        end

        context '#create' do

          let(:subnet_details) {{
            :subnet_id => 'subnet-12345',
            :vpc_id => 'vpc-12345',
            :state => 'pending',
            :cidr_block => '192.0.0.0/16',
            :available_ip_address_count => 50,
            :availability_zone => 'us-east-1c',
          }}

          let(:response) { client.stub_for(:create_subnet) }

          before(:each) do
            response.data[:subnet] = subnet_details
            client.stub(:create_subnet).and_return(response)
          end

          it 'calls #create_subnet on the client' do
            client.should_receive(:create_subnet).
              with(:vpc_id => vpc.id, :cidr_block => '10.0.0.0/16').
              and_return(response)
            subnets.create('10.0.0.0/16', :vpc => vpc)
          end

          it 'accepts a vpc id as a string' do
            client.should_receive(:create_subnet).
              with(:vpc_id => 'abc', :cidr_block => '10.0.0.0/16').
              and_return(response)
            subnets.create('10.0.0.0/16', :vpc => 'abc')
          end

          it 'provides the vpc when present in the collection' do
            client.should_receive(:create_subnet).
              with(:vpc_id => vpc.id, :cidr_block => 'cidr-block').
              and_return(response)
            vpc.subnets.create('cidr-block')
          end

          it 'accepts an availability zone name' do
            client.should_receive(:create_subnet).with(
                :vpc_id => vpc.id,
                :cidr_block => 'cidr-block',
                :availability_zone => 'abc'
              ).and_return(response)
            subnet = subnets.create('cidr-block', :vpc => vpc,
              :availability_zone => AvailabilityZone.new('abc'))
          end

          it 'accepts an availability zone' do
            client.should_receive(:create_subnet).with(
                :vpc_id => vpc.id,
                :cidr_block => 'cidr-block',
                :availability_zone => 'az-name'
              ).and_return(response)
            subnet = subnets.create('cidr-block', :vpc => vpc,
              :availability_zone => 'az-name')
          end

          it 'returns a populated subnet' do
            subnet = subnets.create('192.0.0.0/16', :vpc => vpc)
            subnet.should be_a(Subnet)
            subnet.subnet_id.should == 'subnet-12345'
            subnet.vpc_id.should == 'vpc-12345'
            subnet.cidr_block.should == '192.0.0.0/16'
            subnet.available_ip_address_count.should == 50
            subnet.availability_zone_name.should == 'us-east-1c'
          end

        end

      end
    end
  end
end
