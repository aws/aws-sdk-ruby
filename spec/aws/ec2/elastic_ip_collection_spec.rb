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

    describe ElasticIpCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { ElasticIp }

        let(:client_method) { :describe_addresses }

        def stub_two_members(resp)
          resp.data[:addresses_set] = [
            { :public_ip => '1.1.1.1', :instance_id => 'instance1' },
            { :public_ip => '2.2.2.2', :instance_id => nil },
          ]
        end

        it_should_behave_like "ec2 collection array access"

        context '#create' do

          let(:response) { client.stub_for(:allocate_address) }

          before(:each) do
            response.data[:public_ip] = '1.1.1.1'
            client.stub(:allocate_address).and_return(response)
          end

          it 'should return an elastic ip address' do
            collection.create.should be_an(ElasticIp)
          end

          it 'returns an elastic ip address with the correct configuration' do
            collection.create.config.should == config
          end

          it 'calls allocate_address on the client' do
            client.should_receive(:allocate_address)
            collection.create
          end

          it 'returns an elasic ip address with the correct ip address' do
            collection.create.ip_address.should == '1.1.1.1'
          end

          it 'accepts a :vpc option for creating vpc ip addresses' do
            client.should_receive(:allocate_address).
              with(:domain => 'vpc').
              and_return(response)
            collection.create(:vpc => true)
          end

        end

        context '#allocate' do

          it 'should be an alias of create' do
            collection.method(:allocate).should == collection.method(:create)
          end

        end

        context '#[]' do

          it 'returns an elastic ip' do
            collection['1.1.1.1'].should be_an(ElasticIp)
          end

          it 'returns an elastic ip with the given public ip' do
            collection['1.1.1.1'].public_ip.should == "1.1.1.1"
          end

        end

        context '#each' do

          it 'should pass the ip addresses' do
            collection.collect{|ip| ip.public_ip }.
              should == %w(1.1.1.1 2.2.2.2)
          end

        end

      end

    end
  end
end
