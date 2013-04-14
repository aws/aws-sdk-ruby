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
    describe VPNConnectionCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { VPNConnection }

        let(:client_method) { :describe_vpn_connections }

        def stub_two_members(resp)
          resp.data[:vpn_connection_set] = [
            { :vpn_connection_id => 'id1' },
            { :vpn_connection_id => 'id2' },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:vpn_connections) { collection }

        context '#each' do

          it 'yields vpn connections' do
            connections = collection.to_a
            connections.each{|c| c.should be_a(VPNConnection) }
            connections.map(&:id).should == %w(id1 id2)
          end

        end

        context '#[]' do

          it 'returns a vpn connection' do
            conn = vpn_connections['id']
            conn.should be_a(VPNConnection)
            conn.id.should == 'id'
            conn.config.should == config
          end

        end

        context '#create' do

          let(:details) {{
            :vpn_connection_id => 'id',
            :vpn_type => 'ipsec.1',
            :vpn_gateway_id => 'gid',
            :customer_gateway_id => 'cgid',
            :customer_gateway_configuration => 'xml',
            :vgw_telemetry => [],
          }}

          let(:response) { client.stub_for(:create_vpn_connection) }

          before(:each) do
            response.data[:vpn_connection] = details
            client.stub(:create_vpn_connection).and_return(response)
          end

          it 'calls #create_vpn_connection on the client' do

            client.should_receive(:create_vpn_connection).with(
              :customer_gateway_id => 'cgwid',
              :vpn_gateway_id => 'gid',
              :type => 'ipsec.1'
            ).and_return(response)

            vpn_connections.create(
              :customer_gateway => 'cgwid',
              :vpn_gateway => 'gid')
          end

          it 'accepts gateway objects' do
            client.should_receive(:create_vpn_connection).with(
              :customer_gateway_id => 'cgwid',
              :vpn_gateway_id => 'gid',
              :type => 'ipsec.1'
            ).and_return(response)
            vpn_connections.create(
              :customer_gateway => CustomerGateway.new('cgwid'),
              :vpn_gateway => VPNGateway.new('gid'))
          end

          it 'accepts the customer gateway from a collection' do
            client.should_receive(:create_vpn_connection).with(
              :customer_gateway_id => 'cgwid',
              :vpn_gateway_id => 'gid',
              :type => 'ipsec.1'
            ).and_return(response)
            g = CustomerGateway.new('cgwid', :config => config)
            g.vpn_connections.create(
              :vpn_gateway => VPNGateway.new('gid'))
          end

          it 'accepts the vpn gateway from a collection' do
            client.should_receive(:create_vpn_connection).with(
              :customer_gateway_id => 'cgwid',
              :vpn_gateway_id => 'gid',
              :type => 'ipsec.1'
            ).and_return(response)
            g = VPNGateway.new('gid', :config => config)
            g.vpn_connections.create(
              :customer_gateway => CustomerGateway.new('cgwid'))
          end

        end
      end
    end
  end
end
