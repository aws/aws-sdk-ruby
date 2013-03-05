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
    describe VPCCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { VPC }

        let(:client_method) { :describe_vpcs }

        def stub_two_members(resp)
          resp.data[:vpc_set] = [
            {
              :vpc_id => 'vpc-1',
              :cidr_block => '192.0.0.0/16',
              :dhcp_options_id => 'dopt-1',
              :tag_set => [],
              :instance_tenancy => 'default',
              :state => 'available',
            },{
              :vpc_id => 'vpc-2',
              :cidr_block => '10.0.0.0/16',
              :dhcp_options_id => 'dopt-2',
              :tag_set => [],
              :instance_tenancy => 'dedicated',
              :state => 'available',
            }
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:vpcs) { collection }

        context '#each' do

          it 'yields populated vpcs' do
            vpcs = collection.to_a
            vpcs[0].vpc_id.should == 'vpc-1'
            vpcs[0].cidr_block.should == '192.0.0.0/16'
            vpcs[0].dhcp_options_id.should == 'dopt-1'
            vpcs[0].instance_tenancy.should == :default
            vpcs[1].vpc_id.should == 'vpc-2'
            vpcs[1].cidr_block.should == '10.0.0.0/16'
            vpcs[1].dhcp_options_id.should == 'dopt-2'
            vpcs[1].instance_tenancy.should == :dedicated
          end

        end

        context '#[]' do

          it 'returns a vpc with the correct config' do
            vpc = vpcs['vpc-id']
            vpc.should be_a(VPC)
            vpc.vpc_id.should == 'vpc-id'
            vpc.config.should == vpcs.config
          end

        end

        context '#create' do

          let(:vpc_details) {{
            :vpc_id => 'vpc-12345',
            :state => 'pending',
            :cidr_block => '192.0.0.0/16',
            :dhcp_options_id => 'dopt-12345',
            :instance_tenancy => 'default',
          }}

          let(:response) { client.stub_for(:create_vpc) }

          before(:each) do
            response.data[:vpc] = vpc_details
            client.stub(:create_vpc).and_return(response)
          end

          it 'calls #create_vpc on the client' do

            client.should_receive(:create_vpc).
              with(:cidr_block => '10.0.0.0/16', :instance_tenancy => 'default').
              and_return(response)

            vpcs.create('10.0.0.0/16')

          end

          it 'calls accept a different tenancy value' do

            client.should_receive(:create_vpc).
              with(:cidr_block => '10.0.0.0/24', :instance_tenancy => 'dedicated').
              and_return(response)

            vpcs.create('10.0.0.0/24', :instance_tenancy => :dedicated)

          end

          it 'returns a VPC object' do
            vpc = vpcs.create('192.0.0.0/16')
            vpc.should be_a(VPC)
            vpc.vpc_id.should == 'vpc-12345'
            vpc.cidr_block.should == '192.0.0.0/16'
            vpc.dhcp_options_id.should == 'dopt-12345'
            vpc.instance_tenancy.should == :default
          end

        end

      end
    end
  end
end
