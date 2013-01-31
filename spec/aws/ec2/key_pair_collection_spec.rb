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
require 'base64'

module AWS
  class EC2

    describe KeyPairCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { KeyPair }

        let(:client_method) { :describe_key_pairs }

        def stub_two_members(resp)
          resp.data[:key_set] = [
            { :key_name => 'abc', :key_fingerprint => 'cba' },
            { :key_name => 'xyz', :key_fingerprint => 'zyx' },
          ]
        end

        it_should_behave_like "ec2 collection array access"

        context '#create' do

          let(:response) { client.stub_for(:create_key_pair) }

          before(:each) do
            response.data[:key_name] = 'key-name'
            response.data[:key_fingerprint] = 'fingerprint'
            response.data[:key_material] = 'privatekey'
            client.stub(:create_key_pair).and_return(response)
          end

          it 'calls create_key_pair on the client' do
            client.should_receive(:create_key_pair).
              with(:key_name => 'key_name')
            collection.create(:key_name)
          end

          it 'returns a key pair' do
            collection.create('key-name').should be_a(KeyPair)
          end

          it 'returns a key pair with the correct name' do
            collection.create('key-name').name.should == 'key-name'
          end

          it 'returns a key pair with the correct fingerprint' do
            collection.create('key-name').fingerprint.should == 'fingerprint'
          end

          it 'returns a key pair with the correct private key' do
            collection.create('key-name').private_key.should == 'privatekey'
          end

          it 'returns a key pair with the correct config' do
            collection.create('key-name').config.should eq(config)
          end

        end

        context '#import' do

          let(:response) { client.stub_for(:import_key_pair) }

          before(:each) do
            response.data[:key_name] = 'key-name'
            response.data[:key_fingerprint] = 'fingerprint'
            client.stub(:import_key_pair).and_return(response)
          end

          it 'calls import_key_pair on the client' do
            material = Base64.encode64('pubkey')
            client.should_receive(:import_key_pair).
              with(:key_name => 'key_name', :public_key_material => material)
            collection.import(:key_name, 'pubkey')
          end

          it 'returns a key pair' do
            collection.import('key-name', 'pubkey').should be_a(KeyPair)
          end

          it 'returns a key pair with the correct name' do
            collection.import('key-name', 'pubkey').name.should == 'key-name'
          end

          it 'returns a key pair with the correct fingerprint' do
            collection.import('key-name', 'pubkey').fingerprint.should == 'fingerprint'
          end

        end

        context '#each' do

          it 'passes names' do
            collection.collect{|kp| kp.name }.should == %w(abc xyz)
          end

          it 'passes fingerprint' do
            collection.collect{|kp| kp.fingerprint }.should == %w(cba zyx)
          end

        end

      end

    end
  end
end
