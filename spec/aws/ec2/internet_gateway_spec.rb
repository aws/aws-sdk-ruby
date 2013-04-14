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
    describe InternetGateway do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:internet_gateway) { InternetGateway.new('igw-123', :config => config) }

      it_should_behave_like "an ec2 resource object"

      context '#internet_gateway_id' do

        it 'returns the internet gateway id passed in' do
          internet_gateway.internet_gateway_id.should == 'igw-123'
        end

        it 'is aliased as #id' do
          internet_gateway.id.should == internet_gateway.internet_gateway_id
        end

      end

      context '#attach' do

        it 'calls #attach_internet_gateway on the client' do
          client.should_receive(:attach_internet_gateway).with(
            :internet_gateway_id => internet_gateway.id,
            :vpc_id => 'vpc-id')
          internet_gateway.attach('vpc-id')
        end

        it 'accepts vpc objects' do
          client.should_receive(:attach_internet_gateway).with(
            :internet_gateway_id => internet_gateway.id,
            :vpc_id => 'vpc-id')
          internet_gateway.attach(VPC.new('vpc-id'))
        end

      end

      context '#detach' do

        it 'calls #detach_internet_gateway on the client' do
          client.should_receive(:detach_internet_gateway).with(
            :internet_gateway_id => internet_gateway.id,
            :vpc_id => 'vpc-id')
          internet_gateway.detach('vpc-id')
        end

        it 'accepts vpc objects' do
          client.should_receive(:detach_internet_gateway).with(
            :internet_gateway_id => internet_gateway.id,
            :vpc_id => 'vpc-id')
          internet_gateway.detach(VPC.new('vpc-id'))
        end

      end

      context '#delete' do

        it 'calls #delete_internet_gateway on the client' do
          client.should_receive(:delete_internet_gateway).with(
            :internet_gateway_id => internet_gateway.id)
          internet_gateway.delete
        end

      end

      context 'existing gateways' do

        let(:response) { client.stub_for(:describe_internet_gateways) }

        before(:each) do
          response.data[:internet_gateway_set] = [
            {
              :internet_gateway_id => internet_gateway.id,
              :vpc_id => 'vpc-id',
              :attachment_set => [
                { :vpc_id => 'vpc-id', :state => 'attached' },
              ]
            }
          ]
          client.stub(:describe_internet_gateways).and_return(response)
        end

        context '#vpc' do

          it 'returns the vpc' do
            vpc = internet_gateway.vpc
            vpc.should be_a(VPC)
            vpc.vpc_id.should == 'vpc-id'
            vpc.config.should == config
          end

        end

        context '#vpc=' do

          it 'attaches the gateway after detaching the previous vpc' do
            client.should_receive(:detach_internet_gateway).with(
              :internet_gateway_id => internet_gateway.id,
              :vpc_id => 'vpc-id')
            client.should_receive(:attach_internet_gateway).with(
              :internet_gateway_id => internet_gateway.id,
              :vpc_id => 'vpc-123')
            internet_gateway.vpc = VPC.new('vpc-123')
          end

        end

        context '#attachments' do

          it 'returns an array of attachments' do
            attachments = internet_gateway.attachments
            attachments.size.should == 1
            attachments[0].should be_an(InternetGateway::Attachment)
            attachments[0].internet_gateway.should == internet_gateway
            attachments[0].vpc.should == VPC.new('vpc-id', :config => config)
            attachments[0].state.should == :attached
          end

          it 'calls detach when you delete an attahcment' do
            client.should_receive(:detach_internet_gateway).with(
              :internet_gateway_id => internet_gateway.id,
              :vpc_id => 'vpc-id')
            internet_gateway.attachments.first.delete
          end

        end

        context '#exists?' do

          it 'calls #describe_internet_gateways to determine if it exists' do
            client.should_receive(:describe_internet_gateways).
              with(:internet_gateway_ids => [internet_gateway.id]).
              and_return(response)
            internet_gateway.exists?
          end

          it 'returns true if it can be described' do
            internet_gateway.exists?.should == true
          end

          it 'returns false if an error is raised trying to describe it' do
            client.stub(:describe_internet_gateways).
              and_raise(Errors::InvalidInternetGatewayID::NotFound.new('msg'))
            internet_gateway.exists?.should == false
          end

        end

      end

    end
  end
end
