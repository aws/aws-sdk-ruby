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

    describe AccessKey do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new('username', :config => config) }

      let(:access_key) { AccessKey.new('id', :user => user) }

      context '#id' do

        it 'returns the access key id that was passed to #new' do
          access_key = AccessKey.new('id')
          access_key.id.should == 'id'
        end

      end

      context '#user' do

        it 'returns the user passed to #new' do
          access_key.user.should == user
        end

      end

      context '#config' do

        it 'should be the users config' do
          access_key.config.should == user.config
        end

      end

      context '#secret' do

        it 'returns the secret passed to #new' do
          access_key = AccessKey.new('id', :secret_value => 'secret')
          access_key.secret.should == 'secret'
        end

        it 'raises an error when not provided' do
          access_key = AccessKey.new('id')
          lambda {
            access_key.secret
          }.should raise_error(/only available for new access keys/)
        end

      end

      context '#status' do

        it 'lists access keys to find the status' do

          response = client.stub_for(:list_access_keys)

          response.data[:access_key_metadata] = [
            {
              :access_key_id => 'id',
              :user_name => user.name,
              :status => 'Inactive',
            },
          ]

          client.should_receive(:list_access_keys).
            with(:user_name => user.name).
            and_return(response)

          access_key.status.should == :inactive

        end

      end

      context '#active?' do

        it 'returns true if the status is :active' do
          access_key.stub(:status).and_return(:active)
          access_key.active?.should == true
        end

        it 'returns false if the status is :inactive' do
          access_key.stub(:status).and_return(:inactive)
          access_key.active?.should == false
        end

      end

      context '#inactive?' do

        it 'returns false if the status is :active' do
          access_key.stub(:status).and_return(:active)
          access_key.inactive?.should == false
        end

        it 'returns true if the status is :inactive' do
          access_key.stub(:status).and_return(:inactive)
          access_key.inactive?.should == true
        end

      end

      context '#activate!' do

        it 'calls update_access_key on the client' do

          client.should_receive(:update_access_key).with(
            :access_key_id => access_key.id,
            :user_name => user.name,
            :status => 'Active')

          access_key.activate!

        end

      end

      context '#deactivate!' do

        it 'calls update_access_key on the client' do
          client.should_receive(:update_access_key).with(
            :access_key_id => access_key.id,
            :user_name => user.name,
            :status => 'Inactive')
          access_key.deactivate!
        end

      end

      context '#delete' do

        it 'calls delete_access_key on the client' do
          client.should_receive(:delete_access_key).with(
            :access_key_id => access_key.id,
            :user_name => user.name)
          access_key.delete
        end

      end

    end

  end

end
