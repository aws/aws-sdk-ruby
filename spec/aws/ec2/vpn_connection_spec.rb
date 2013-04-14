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
    describe VPNConnection do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:vpn_connection) { VPNConnection.new('id', :config => config) }

      it_should_behave_like "an ec2 resource object"

      it_should_behave_like "a tagged ec2 item" do
        let(:describe_call) { :describe_vpn_connections }
        let(:taggable) { vpn_connection }
        def stub_tags(resp, tags)
          resp.data[:vpn_connection_set] = [
            { :vpn_connection_id => 'id', :tag_set => tags },
          ]
        end
      end

      context '#vpn_connection_id' do

        it 'returns the route table id passed in' do
          vpn_connection.vpn_connection_id.should == 'id'
        end

        it 'is aliased as #id' do
          vpn_connection.id.should == vpn_connection.vpn_connection_id
        end

      end

      context '#delete' do

        it 'calls #delete_vpn_connection on the the client' do
          client.should_receive(:delete_vpn_connection).
            with(:vpn_connection_id => 'id')
          vpn_connection.delete
        end

      end

      context 'exisitng connections' do

        let(:now) { Time.now }

        let(:response) { client.stub_for(:describe_vpn_connections) }

        before(:each) do
          response.data[:vpn_connection_set] = [
            {
              :vpn_connection_id => vpn_connection.id,
              :state => 'state',
              :vpn_type => 'ipsec.1',
              :vpn_gateway_id => 'vpngid',
              :customer_gateway_id => 'cgid',
              :customer_gateway_configuration => 'xml',
              :vgw_telemetry => [
                {
                  :outside_ip_address => '1.2.3.4',
                  :status => 'status',
                  :last_status_change => now,
                  :status_message => 'status message',
                  :accepted_route_count => 2,
                },
              ]
            },
          ]
        end

        it 'returns the state as a symbol' do
          vpn_connection.state.should == :state
        end

        it 'returns the vpn_type as a string' do
          vpn_connection.vpn_type.should == 'ipsec.1'
        end

        it 'returns the gateway' do
          vpn_connection.vpn_gateway.should ==
            VPNGateway.new('vpngid', :config => config)
        end

        it 'returns the customer gateway' do
          vpn_connection.customer_gateway.should ==
            CustomerGateway.new('cgid', :config => config)
        end

        it 'returns the customer gateway configuration' do
          vpn_connection.customer_gateway_configuration.should ==  'xml'
        end

        context '#vgw_telemetry' do

          it 'returns telemetry objects' do
            t = vpn_connection.vgw_telemetry
            t[0].should be_a(VPNConnection::Telemetry)
            t[0].vpn_connection.should == vpn_connection
            t[0].outside_ip_address.should == '1.2.3.4'
            t[0].status.should == :status
            t[0].last_status_change.should == now
            t[0].status_message.should == 'status message'
            t[0].accepted_route_count.should == 2
          end

        end

      end
    end
  end
end
