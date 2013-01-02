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
    describe VPNGatewayCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { VPNGateway }

        let(:client_method) { :describe_vpn_gateways }

        def stub_two_members(resp)
          resp.data[:vpn_gateway_set] = [
            { :vpn_gateway_id => 'vgw-1' },
            { :vpn_gateway_id => 'vgw-2' },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:vpn_gateways) { collection }

        context '#each' do

          it 'yields vpn gateways' do
            tables = collection.to_a
            tables.each{|t| t.should be_a(VPNGateway) }
            tables.map(&:id).should == %w(vgw-1 vgw-2)
          end

        end

        context '#[]' do

          it 'returns a vpn gateway with the correct config' do
            gateway = vpn_gateways['vgw-123']
            gateway.should be_a(VPNGateway)
            gateway.id.should == 'vgw-123'
            gateway.config.should == config
          end

        end

        context '#create' do

          let(:details) {{
            :vpn_gateway_id => 'vgw-123',
            :vpn_type => 'ipsec.1',
            :attachment_set => [],
          }}

          let(:response) { client.stub_for(:create_vpn_gateway) }

          before(:each) do
            response.data[:vpn_gateway] = details
            client.stub(:create_vpn_gateway).and_return(response)
          end

          it 'calls #create_vpn_gateway on the client' do
            client.should_receive(:create_vpn_gateway).
              with(:type => 'ipsec.1').
              and_return(response)
            vpn_gateways.create
          end

          it 'accepts an availability zone name string' do
            client.should_receive(:create_vpn_gateway).with(
              :type => 'ipsec.1',
              :availability_zone => 'az-name'
            ).and_return(response)
            vpn_gateways.create :availability_zone => 'az-name'
          end

          it 'accepts an availability zone object' do
            client.should_receive(:create_vpn_gateway).with(
              :type => 'ipsec.1',
              :availability_zone => 'az-name'
            ).and_return(response)
            zone = AvailabilityZone.new('az-name')
            vpn_gateways.create :availability_zone => zone
          end

          it 'returns a vpn gateway' do
            gateway = vpn_gateways.create
            gateway.should be_a(VPNGateway)
            gateway.vpn_gateway_id.should == 'vgw-123'
            gateway.vpn_type.should == 'ipsec.1'
            gateway.config.should == config
          end

        end
      end
    end
  end
end
