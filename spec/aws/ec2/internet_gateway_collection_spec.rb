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
    describe InternetGatewayCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { InternetGateway }

        let(:client_method) { :describe_internet_gateways }

        def stub_two_members(resp)
          resp.data[:internet_gateway_set] = [
            { :internet_gateway_id => 'igw-1' },
            { :internet_gateway_id => 'igw-2' },
          ]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        let(:internet_gateways) { collection }

        context '#each' do

          it 'yields internet gateways' do
            gateways = collection.to_a
            gateways[0].should be_a(InternetGateway)
            gateways[0].internet_gateway_id.should == 'igw-1'
            gateways[1].should be_a(InternetGateway)
            gateways[1].internet_gateway_id.should == 'igw-2'
          end

        end

        context '#[]' do

          it 'returns an internet gateway with the correct config' do
            igw = internet_gateways['igw-123']
            igw.should be_an(InternetGateway)
            igw.internet_gateway_id.should == 'igw-123'
            igw.config.should == config
          end

        end

        context '#create' do

          let(:response) { client.stub_for(:create_network_acl) }

          before(:each) do
            response.data[:internet_gateway] = {
              :internet_gateway_id => 'igw-123',
            }
            client.stub(:create_internet_gateway).and_return(response)
          end

          it 'calls #create_internet_gateway on the client' do
            client.should_receive(:create_internet_gateway).
              with(no_args).and_return(response)
            internet_gateways.create
          end

          it 'returns an internet gateway' do
            igw = internet_gateways.create
            igw.should be_an(InternetGateway)
            igw.internet_gateway_id.should == 'igw-123'
            igw.config.should == config
          end

        end

      end
    end
  end
end
