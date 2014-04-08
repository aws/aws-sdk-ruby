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

    describe KeyPair do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:keypair) { KeyPair.new('gsg-keypair', :config => config) }

      let(:describe_call) { :describe_key_pairs }

      let(:describe_opts) { { :key_names => ["gsg-keypair"] } }

      let(:response_id_field) { :key_name }

      let(:resource_id) { "gsg-keypair" }

      let(:instance) { keypair }

      def stub_member(resp, member)
        resp.data[:key_index] = { member.key_name => member }
      end

      it_should_behave_like "an ec2 resource object"

      context '#name' do

        it 'returns the name it was constructed with' do
          keypair.name.should == 'gsg-keypair'
        end

        it 'stringifies the name' do
          KeyPair.new(:foo).name.should == 'foo'
        end

      end

      context '#exists?' do
        let(:id_filter) { "key-name" }
        def stub_exists(resp)
          resp.data[:key_set] = [{}]
        end
        it_should_behave_like "ec2 resource exists method"
      end

      context '#fingerprint' do

        it 'returns the fingerprint' do
          keypair = KeyPair.new('name', :fingerprint => 'fingerprint')
          keypair.fingerprint.should == 'fingerprint'
        end

        let(:attribute) { :fingerprint }
        let(:response_field) { :key_fingerprint }
        let(:response_value) { "1234" }
        let(:translated_value) { response_value }

        #it_should_behave_like "ec2 resource attribute accessor (describe call)"

        context 'populate from create_key_pair' do

          let(:response) { client.stub_for(:create_key_pair) }

          let(:attributes) { keypair.attributes_from_response(response) }

          before(:each) do
            response.data[:key_name] = 'gsg-keypair'
            response.data[:key_fingerprint] = '1234'
          end

          it 'should not populate if the key name does not match' do
            response.data[:key_name] = 'anotherone'
            attributes.should be_nil
          end

          it 'should populate the key fingerprint' do
            response.data[:key_fingerprint] = '1234'
            attributes[:fingerprint].should == "1234"
          end

        end

        context 'populate from import_key_pair' do

          let(:response) { client.stub_for(:import_key_pair) }

          let(:attributes) { keypair.attributes_from_response(response) }

          before(:each) do
            response.data[:key_name] = 'gsg-keypair'
          end

          it 'should not populate if the key name does not match' do
            response.data[:key_name] = 'anotherone'
            attributes.should be_nil
          end

          it 'should populate the key fingerprint' do
            response.data[:key_fingerprint] = '1234'
            attributes[:fingerprint].should == "1234"
          end

        end

      end

      context '#private_key' do

        it 'returns the private key' do
          keypair = KeyPair.new('name', :private_key => 'abc')
          keypair.private_key.should == 'abc'
        end

        it 'raises an exception on keys not initialized with private key' do
          lambda { KeyPair.new('name').private_key }.should raise_error
        end

      end

      context '#delete' do

        it 'calls delete_key_pair on the client' do
          client.should_receive(:delete_key_pair).
            with(:key_name => keypair.name)
          keypair.delete
        end

      end

    end
  end
end
