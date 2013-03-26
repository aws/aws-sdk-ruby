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
    describe VPC do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:vpc) { VPC.new("vpc-12345", :config => config) }

      it_should_behave_like "an ec2 resource object"

      context '#vpc_id' do

        it 'returns the id passed in' do
          vpc.vpc_id.should == 'vpc-12345'
        end

        it 'is aliased as #id' do
          vpc.id.should == vpc.vpc_id
        end

      end

      context '#delete' do

        it 'calls #delete_vpc on the client' do
          client.should_receive(:delete_vpc).with(:vpc_id => vpc.id)
          vpc.delete
        end

        it 'returns nil' do
          vpc.delete.should == nil
        end

      end

      context '#subnets' do

        it 'returns a subnet collection' do
          vpc.subnets.should be_a(SubnetCollection)
          vpc.subnets.config.should == vpc.config
        end

      end

      context 'vpc attributes' do

        let(:vpc_details) {{
          :vpc_id => 'vpc-12345',
          :state => 'pending',
          :cidr_block => '192.0.0.0/16',
          :dhcp_options_id => 'dopt-12345',
          :instance_tenancy => 'default',
          :tag_set => [],
        }}

        let(:response) { client.stub_for(:describe_vpcs) }

        before(:each) do
          response.data[:vpc_set] = [vpc_details]
          client.should_receive(:describe_vpcs).
            with(:vpc_ids => ['vpc-12345']).
            and_return(response)
        end

        context '#state' do

          it 'is returned as a symbol' do
            vpc.state.should == :pending
          end

        end

        context '#cidr_block' do

          it 'is returned as a string' do
            vpc.cidr_block.should == '192.0.0.0/16'
          end

        end

        context '#dhcp_options_id' do

          it 'is returned as a string' do
            vpc.dhcp_options_id.should == 'dopt-12345'
          end

        end

        context '#instance_tenancy' do

          it 'is returned as a symbol' do
            vpc.instance_tenancy.should == :default
          end

        end

      end

    end
  end
end
