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
    describe CustomerGateway do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:customer_gateway) { CustomerGateway.new('cgw-123', :config => config) }

      it_should_behave_like "an ec2 resource object"

      it_should_behave_like "a tagged ec2 item" do
        let(:describe_call) { :describe_customer_gateways }
        let(:taggable) { customer_gateway }
        def stub_tags(resp, tags)
          resp.data[:customer_gateway_set] = [
            { :customer_gateway_id => 'cgw-123', :tag_set => tags },
          ]
        end
      end

      context '#customer_gateway_id' do

        it 'returns the customer gateway id passed in' do
          customer_gateway.customer_gateway_id.should == 'cgw-123'
        end

        it 'is aliased as #id' do
          customer_gateway.id.should == customer_gateway.customer_gateway_id
        end

      end

      context '#delete' do

        it 'calls #delete_customer_gateway on the client' do
          client.should_receive(:delete_customer_gateway).with(
            :customer_gateway_id => customer_gateway.id)
          customer_gateway.delete
        end

      end

      context 'exisitng gateway' do

        let(:response) { client.stub_for(:describe_customer_gateways) }

        before(:each) do
          response.data[:customer_gateway_set] = [
            {
              :customer_gateway_id => customer_gateway.id,
              :state => 'available',
              :vpn_type => 'ipsec.1',
              :ip_address => '1.2.3.4',
              :bgp_asn => 65432,
            }
          ]
        end

        context 'state' do

          it 'is returned as a sybmol' do
            customer_gateway.state.should == :available
          end

        end

        context 'vpc_type' do

          it 'is retruned as a string' do
            customer_gateway.vpn_type.should == 'ipsec.1'
          end

        end

        context 'ip_address' do

          it 'is retruned as a string' do
            customer_gateway.ip_address.should == '1.2.3.4'
          end

        end

        context 'bgp_asn' do

          it 'is retruned as an integer' do
            customer_gateway.bgp_asn.should == 65432
          end

        end

        context '#exists?' do

          it 'calls #describe_customer_gateways to determine if it exists' do
            client.should_receive(:describe_customer_gateways).
              with(:customer_gateway_ids => [customer_gateway.id]).
              and_return(response)
            customer_gateway.exists?
          end

          it 'returns true if it can be described' do
            customer_gateway.exists?.should == true
          end

          it 'returns false if an error is raised trying to describe it' do
            client.stub(:describe_customer_gateways).
              and_raise(Errors::InvalidCustomerGatewayID::NotFound.new('msg'))
            customer_gateway.exists?.should == false
          end

        end

      end
    end
  end
end
