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
    describe User do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new('username', :config => config) }

      let(:now) { Time.now }

      shared_examples_for "populated user data" do

        let(:response)        { raise NotImplementedError }
        let(:response_object) {{ :user_name => "username" }}
        let(:attributes)      { user.attributes_from_response(response) }

        it 'should include the user id' do
          response_object[:user_id] = 'abc123'
          attributes[:id].should == "abc123"
        end

        it 'should include the path' do
          response_object[:path] = '/foo/'
          attributes[:path].should == "/foo/"
        end

        it 'should include the create date' do
          now = Time.now
          response_object[:create_date] = now
          attributes[:create_date].should == now
        end

        it 'should include the arn' do
          response_object[:arn] = 'arn:foo'
          attributes[:arn].should == "arn:foo"
        end

      end

      context 'populated from get_user' do

        it_should_behave_like "populated user data" do
          let(:response) { client.stub_for(:get_user) }
          before(:each) do
            response.data[:user] = response_object
          end
        end

        it 'should not populate for a non-matching user' do
          resp = client.stub_for(:get_user)
          resp.data[:user] = { :user_name => 'foobar' }
          user.attributes_from_response(resp).should be_nil
        end

      end

      context 'populated from create_user' do

        it_should_behave_like "populated user data" do
          let(:response) { client.stub_for(:create_user) }
          before(:each) do
            response.data[:user] = response_object
          end
        end

        it 'should not populate for a non-matching user' do
          resp = client.stub_for(:create_user)
          resp.data[:user] = { :user_name => 'foobar' }
          user.attributes_from_response(resp).should be_nil
        end

      end

      context 'populated from list_users' do

        it_should_behave_like "populated user data" do
          let(:response) { client.stub_for(:list_users) }
          before(:each) do
            response.data[:users] = [response_object]
          end
        end

        it 'should not populate for a non-matching user' do
          resp = client.stub_for(:list_users)
          resp.data[:users] = [{ :user_name => 'foobar' }]
          user.attributes_from_response(resp).should be_nil
        end

      end

      context 'populated from get_group' do

        it_should_behave_like "populated user data" do
          let(:response) { client.stub_for(:get_group) }
          before(:each) do
            response.data[:users] = [response_object]
          end
        end

        it 'should not populate for a non-matching user' do
          resp = client.stub_for(:get_group)
          resp.data[:users] = [{:user_name => 'foobar'}]
          user.attributes_from_response(resp).should be_nil
        end

      end

      context 'accessors' do

        let(:response) { client.stub_for(:get_user) }

        let(:response_user) {{
          :user_name => 'username',
          :user_id => 'ABCXYZ',
          :create_date => now.to_s,
          :arn => 'arn',
          :path => '/abc/xyz/',
        }}

        before(:each) do
          response.data[:user] = response_user
          client.stub(:get_user).and_return(response)
        end

        context '#name' do

          it 'is the name passed to the constructor' do
            User.new('username').name.should == 'username'
          end

        end

        context '#name=' do

          it 'updates the user name' do

            response_user[:user_name] = 'newname'

            client.should_receive(:update_user).with(
              :user_name => 'username',
              :new_user_name => 'newname')

            user.name = 'newname'

          end

          it 'modifies the name returned by #name' do
            client.should_not_receive(:get_user)
            user.name = 'newname'
            user.name.should == 'newname'
          end

        end

        context '#id' do

          it 'returns id passed to #new' do
            client.should_not_receive(:get_user)
            u = User.new('username', :id => 'MNOPQR', :config => config)
            u.id.should == 'MNOPQR'
          end

          it 'calls get_user on the client to get the id' do

            client.should_receive(:get_user).
              with(:user_name => 'username').
              and_return(response)

            user.id.should == 'ABCXYZ'

          end

        end

        context '#create_date' do

          it 'returns the time passed to #new' do
            client.should_not_receive(:get_user)
            u = User.new('username', :create_date => now, :config => config)
            u.create_date.should == now
          end

          it 'calls get_user on the client to get the create date' do
            client.should_receive(:get_user).with(:user_name => 'username').
              and_return(response)
            user.create_date.to_s.should == now.to_s
          end

        end

        context '#arn' do

          it 'calls get_user to get the arn' do
            client.should_receive(:get_user).
              with(:user_name => 'username').
              and_return(response)
            user.arn.should == 'arn'
          end

        end

        context '#path' do

          it 'calls get_user to get the path' do
            client.should_receive(:get_user).
              with(:user_name => 'username').
              and_return(response)
            user.path.should == '/abc/xyz/'
          end

        end

        context '#path=' do

          it 'calls update_user to get the path' do

            client.should_receive(:update_user).
              with(:user_name => 'username', :new_path => '/new/path/')

            user.path = '/new/path/'

          end

        end

      end

      context '#delete' do

        it 'calls delete_user on the client' do
          client.should_receive(:delete_user).
            with(:user_name => 'username')
          user.delete
        end

      end

      context '#policies' do

        it 'returns a user policy collection' do
          policies = user.policies
          policies.should be_a(UserPolicyCollection)
          policies.user.should == user
          policies.config.should == user.config
        end

      end

      context '#mfa_devices' do

        it 'returns a mfa device collection' do
          mfa_devices = user.mfa_devices
          mfa_devices.should be_a(MFADeviceCollection)
          mfa_devices.user.should == user
          mfa_devices.config.should == user.config
        end

      end

      context '#signing_certificates' do

        it 'returns a signing certificate collection' do
          signing_certs = user.signing_certificates
          signing_certs.should be_a(SigningCertificateCollection)
          signing_certs.user.should == user
          signing_certs.config.should == user.config
        end

      end

      context '#login_profile' do

        it 'returns a login profile object' do
          profile = user.login_profile
          profile.should be_a(LoginProfile)
          profile.user.should == user
          profile.config.should be(config)
        end

      end

      context '#access_keys' do

        it 'returns an access key collection' do
          access_keys = user.access_keys
          access_keys.should be_an(AccessKeyCollection)
          access_keys.user.should == user
          access_keys.config.should == user.config
        end

      end

      context '#groups' do

        it 'returns a group collection for the user' do
          groups = user.groups
          groups.should be_a(UserGroupCollection)
          groups.user.should == user
          groups.config.should be(config)
        end

      end

    end
  end
end
