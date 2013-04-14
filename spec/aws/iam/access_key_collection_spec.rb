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
  class IAM

    describe AccessKeyCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      context 'with user' do

        let(:user) { User.new('username', :config => config) }

        let(:access_keys) { AccessKeyCollection.new(:user => user) }

        context '#user' do

          it 'returns the user passed to #new' do
            access_keys.user.should == user
          end

        end

        context '#config' do

          it 'should be the users config' do
            access_keys.config.should == user.config
          end

        end

        context '#create' do

          let(:response) { client.stub_for(:create_access_key) }

          before(:each) do

            key = {
              :access_key_id => 'id',
              :secret_access_key => 'secret',
              :status => 'Active',
            }

            response.data[:access_key] = key

            client.stub(:create_access_key).and_return(response)

          end

          it 'calls create_access_key on the client' do

            client.should_receive(:create_access_key).
              with(:user_name => user.name).
              and_return(response)

            access_keys.create

          end

          it 'returns an access key' do
            access_key = access_keys.create
            access_key.should be_a(AccessKey)
            access_key.id.should == 'id'
            access_key.secret.should == 'secret'
            access_key.user.should == user
            access_key.config.should == config
          end

        end

        context '#[]' do

          let(:response) { client.stub_for(:list_access_keys) }

          before(:each) do
            response.data[:access_key_metadata] = [
              {
                :access_key_id => 'id',
                :user_name => user.name,
                :status => 'Active',
              }
            ]
            client.stub(:list_access_keys).and_return(response)
          end

          it 'returns an access key' do
            access_key = access_keys['id']
            access_key.should be_a(AccessKey)
            access_key.user.should == user
            access_key.config.should == user.config
          end

          it 'calls list_access_keys to get the status' do
            client.should_receive(:list_access_keys).and_return(response)
            access_keys['id'].status.should == :active
          end

          it 'returns an access key w/out access to the secret' do
            access_key = access_keys['id']
            lambda {
              access_key.secret
            }.should raise_error(/only available for new access keys/)
          end

        end

        it_behaves_like "a pageable collection with limits" do

          let(:collection)      { access_keys }
          let(:client_method)   { :list_access_keys }
          let(:next_token_key)  { :marker }
          let(:limit_key)       { :max_items }
          let(:request_options) {{ :user_name => user.name }}

          def stub_n_members response, n
            response.data[:access_key_metadata] = (1..n).collect{|i|
              {
                :access_key_id => "id-#{i}",
                :user_name => user.name,
                :status => i % 2 == 1 ? 'Active' : 'Inactive',
              }
            }
          end

          it_behaves_like "a collection that yields models" do

            let(:member_class) { AccessKey }

            it 'yields access_keys with populated ids' do
              access_keys.collect{|c| c.id }.should == %w(id-1 id-2)
            end

            it 'yields access_keys with populated users' do
              access_keys.collect{|k| k.user }.should == [user, user]
            end

          end

        end

      end

      context 'without user' do

        let(:access_keys) { AccessKeyCollection.new(:config => config) }

        context '#user' do

          it 'returns nil' do
            access_keys.user.should == nil
          end

        end

        context '#config' do

          it 'should be the config passed to #new' do
            access_keys.config.should == config
          end

        end

        context '#create' do

          let(:response) { client.stub_for(:create_access_key) }

          before(:each) do

            key = {
              :access_key_id => 'id',
              :secret_access_key => 'secret',
              :status => 'Active',
            }

            response.data[:access_key] = key

            client.stub(:create_access_key).and_return(response)

          end

          it 'calls create_access_key on the client' do

            client.should_receive(:create_access_key).with({}).
              and_return(response)

            access_keys.create

          end

          it 'returns an access key' do
            access_key = access_keys.create
            access_key.should be_an(AccessKey)
            access_key.id.should == 'id'
            access_key.secret.should == 'secret'
            access_key.config.should == config
            access_key.user.should == nil
          end

        end

        context '#[]' do

          it 'returns an access key' do
            access_key = access_keys['id']
            access_key.should be_a(AccessKey)
            access_key.id.should == 'id'
            access_key.user.should == nil
            access_key.config.should == access_keys.config
          end

        end

      end

    end

  end

end
