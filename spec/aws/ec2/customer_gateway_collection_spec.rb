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
    describe CustomerGatewayCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { CustomerGateway }

        let(:client_method) { :describe_customer_gateways }

        def stub_two_members(resp)
          resp.data[:customer_gateway_set] = [
            {
              :customer_gateway_id => 'cgw-1',
              :state => 'available',
              :vpn_type => 'ipsec.1',
              :bgp_asn => 65534,
            },{
              :customer_gateway_id => 'cgw-2',
              :state => 'pending',
              :vpn_type => 'ipsec.1',
              :bgp_asn => 65535,
            },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:customer_gateways) { collection }

        context '#each' do

          it 'yields route tables' do
            gateways = collection.to_a
            gateways.each{|t| t.should be_a(CustomerGateway) }
            gateways.map(&:id).should == %w(cgw-1 cgw-2)
          end

        end

        context '#[]' do

          it 'returns a customer gateway with the correct config' do
            gateway = customer_gateways['cgw-123']
            gateway.should be_a(CustomerGateway)
            gateway.id.should == 'cgw-123'
            gateway.config.should == config
          end

        end

        context '#create' do

          let(:details) {{
            :customer_gateway_id => 'cgw-123',
            :bgp_asn => 65432,
            :ip_address => '1.2.3.4',
            :vpn_type => 'ipsec.1',
            :state => 'available',
          }}

          let(:response) { client.stub_for(:create_customer_gateway) }

          before(:each) do
            response.data[:customer_gateway] = details
            client.stub(:create_customer_gateway).and_return(response)
          end

          it 'calls #create_customer_gateway on the client' do

            client.should_receive(:create_customer_gateway).with(
              :bgp_asn => 65432,
              :public_ip => '1.2.3.4',
              :type => 'ipsec.1'
            ).and_return(response)

            customer_gateways.create(65432, '1.2.3.4')

          end

          it 'returns a customer gateway object' do
            cgw = customer_gateways.create(65432, '1.2.3.4')
            cgw.should be_a(CustomerGateway)
            cgw.customer_gateway_id.should == 'cgw-123'
            cgw.bgp_asn.should == 65432
            cgw.ip_address.should == '1.2.3.4'
            cgw.vpn_type.should == 'ipsec.1'
            cgw.config.should == config
          end

        end
      end
    end
  end
end
