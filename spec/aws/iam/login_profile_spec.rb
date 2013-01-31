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
    describe LoginProfile do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new('username', :config => config) }

      let(:profile) { LoginProfile.new(user) }

      context '#initialize' do

        it 'should set the user' do
          LoginProfile.new(user).user.should == user
        end

      end

      shared_examples_for "populated login profile data" do

        let(:response)        { raise NotImplementedError }
        let(:response_object) {{ :user_name => "username" }}
        let(:attributes)      { profile.attributes_from_response(response) }

        it 'should include the create date' do
          now = Time.now
          response_object[:create_date] = now
          attributes[:create_date].should == now
        end

      end

      context 'populated from get_login_profile' do

        it_should_behave_like "populated login profile data" do
          let(:response) { client.stub_for(:get_login_profile) }
          before(:each) do
            response.data[:login_profile] = response_object
          end
        end

        it 'should not populate for a non-matching profile' do
          resp = client.stub_for(:get_login_profile)
          resp.data[:login_profile] = { :user_name => 'foobar' }
          profile.attributes_from_response(resp).should be_nil
        end

      end

      context 'populated from create_login_profile' do

        it_should_behave_like "populated login profile data" do
          let(:response) { client.stub_for(:create_login_profile) }
          before(:each) do
            response.data[:login_profile] = response_object
          end
        end

        it 'should not populate for a non-matching profile' do
          resp = client.stub_for(:create_login_profile)
          resp.data[:login_profile] = { :user_name => 'foobar' }
          profile.attributes_from_response(resp).should be_nil
        end

      end

      context '#create_date' do

        it 'should call get_login_profile' do
          resp = client.new_stub_for(:get_login_profile)
          resp.data[:login_profile] = { :user_name => 'username' }
          client.should_receive(:get_login_profile).
            with(:user_name => "username").
            and_return(resp)
          profile.create_date
        end

      end

      context '#password=' do

        it 'should call update_login_profile' do
          client.should_receive(:update_login_profile).
            with(:user_name => "username",
                 :password => "foo")
          profile.password = "foo"
        end

        it 'should call create_login_profile if the service returns NoSuchEntity' do
          ex = Errors::NoSuchEntity.new
          client.stub(:update_login_profile).and_raise(ex)
          client.should_receive(:create_login_profile).
            with(:user_name => "username",
                 :password => "foo")
          profile.password = "foo"
        end

        it 'should return the password as it was set' do
          profile.send(:password=, "foo").should == "foo"
        end

        it 'should return the password as it was set when creating' do
          ex = Errors::NoSuchEntity.new
          client.stub(:update_login_profile).and_raise(ex)
          profile.send(:password=, "foo").should == "foo"
        end

      end

      context '#delete' do

        it 'should call delete_login_profile' do
          client.should_receive(:delete_login_profile).
            with(:user_name => "username")
          profile.delete
        end

      end

      context '#exists?' do

        it 'should call get_login_profile' do
          client.should_receive(:get_login_profile).
            with(:user_name => "username")
          profile.exists?
        end

        it 'should return true when the call succeeds' do
          profile.exists?.should be_true
        end

        it 'should return false when the call fails with NoSuchEntity' do
          client.stub(:get_login_profile).
            and_raise(Errors::NoSuchEntity)
          profile.exists?.should be_false
        end

        it 'should not rescue other kinds of errors' do
          client.stub(:get_login_profile).
            and_raise("FOO")
          lambda { profile.exists? }.should raise_error("FOO")
        end

      end

    end
  end
end
