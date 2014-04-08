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
    describe VPNGateway do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:vpn_gateway) { VPNGateway.new('vgw-123', :config => config) }

      it_should_behave_like "an ec2 resource object"

      it_should_behave_like "a tagged ec2 item" do
        let(:describe_call) { :describe_vpn_gateways }
        let(:taggable) { vpn_gateway }
        def stub_tags(resp, tags)
          resp.data[:vpn_gateway_set] = [
            { :vpn_gateway_id => 'vgw-123', :tag_set => tags },
          ]
        end
      end

      context '#vpn_gateway_id' do

        it 'returns the route table id passed in' do
          vpn_gateway.vpn_gateway_id.should == 'vgw-123'
        end

        it 'is aliased as #id' do
          vpn_gateway.id.should == vpn_gateway.vpn_gateway_id
        end

      end

      context '#attach' do

        let(:response) { client.stub_for(:attach_vpn_gateway) }

        before(:each) do
          response.data[:attachment] = {
            :state => 'attached',
            :vpc_id => 'vpc-id',
          }
          client.stub(:attach_vpn_gateway).and_return(response)
        end

        it 'calls #attach_vpn_gateway on the client' do
          client.should_receive(:attach_vpn_gateway).with(
            :vpn_gateway_id => vpn_gateway.id,
            :vpc_id => 'vpc-id')
          vpn_gateway.attach('vpc-id')
        end

        it 'accepts a vpc object' do
          client.should_receive(:attach_vpn_gateway).with(
            :vpn_gateway_id => vpn_gateway.id,
            :vpc_id => 'vpc-id')
          vpn_gateway.attach(VPC.new('vpc-id'))
        end

        it 'returns an attachment' do
          attachment = vpn_gateway.attach('vpc-id')
          attachment.should be_a(VPNGateway::Attachment)
          attachment.vpn_gateway.should == vpn_gateway
          attachment.vpc.should == VPC.new('vpc-id', :config => config)
          attachment.state.should == :attached
        end

      end

      context '#detach' do

        it 'calls #detach_vpn_gateway on the client' do
          client.should_receive(:detach_vpn_gateway).with(
            :vpn_gateway_id => vpn_gateway.id,
            :vpc_id => 'vpc-id')
          vpn_gateway.detach('vpc-id')
        end

        it 'accepts a vpc object' do
          client.should_receive(:detach_vpn_gateway).with(
            :vpn_gateway_id => vpn_gateway.id,
            :vpc_id => 'vpc-id')
          vpn_gateway.detach(VPC.new('vpc-id'))
        end

      end

      context '#delete' do

        it 'calls #delete_vpn_connection on the client' do
          client.should_receive(:delete_vpn_gateway).with(
            :vpn_gateway_id => vpn_gateway.id)
          vpn_gateway.delete
        end

      end

      context 'exisitng gateways' do

        let(:response) { client.stub_for(:describe_vpn_gateways) }

        before(:each) do
          response.data[:vpn_gateway_set] = [
            {
              :vpn_gateway_id => vpn_gateway.id,
              :state => 'attached',
              :vpn_type => 'ipsec.1',
              :attachments => [
                { :state => 'attached', :vpc_id => 'vpc-id' },
              ]
            }
          ]
          client.stub(:describe_vpn_gateways).and_return(response)
        end

        it 'populates from the describe call' do
          vpn_gateway.state.should == :attached
          vpn_gateway.vpn_type.should == 'ipsec.1'
        end

        context '#vpc' do

          it '#vpc returns the vpc' do
            vpn_gateway.vpc.should be_a(VPC)
            vpn_gateway.vpc.vpc_id.should == 'vpc-id'
            vpn_gateway.vpc.config.should == vpn_gateway.config
          end

        end

      end
    end
  end
end
