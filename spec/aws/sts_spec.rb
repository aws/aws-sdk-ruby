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
  describe STS do

    let(:config) { stub_config }

    let(:client) { config.sts_client }

    let(:sts) { STS.new(:sts_client => client) }

    it_behaves_like 'a class that accepts configuration', :sts_client

    let(:response_credentials) {{
       :access_key_id => "FOO",
       :secret_access_key => "BAR",
       :session_token => "BAZ",
       :expiration => Time.now,
    }}

    context '#new_session' do

      let(:resp) { client.stub_for(:get_session_token) }

      before(:each) do
        resp.data[:credentials] = response_credentials
        client.stub(:get_session_token).and_return(resp)
      end

      it 'should call get_session_token' do
        client.should_receive(:get_session_token)
        sts.new_session
      end

      it 'should pass :duration as :duration_seconds' do
        client.should_receive(:get_session_token).
          with(:duration_seconds => 10)
        sts.new_session(:duration => 10)
      end

      it 'should return a session object' do
        sts.new_session.should be_a(STS::Session)
      end

      it 'should set the credentials hash' do
        sts.new_session.credentials.should == {
          :access_key_id => "FOO",
          :secret_access_key => "BAR",
          :session_token => "BAZ"
        }
      end

      it 'should set the expiration time' do
        sts.new_session.expires_at.
          should == response_credentials[:expiration]
      end

    end

    context '#new_federated_session' do

      let(:resp) { client.stub_for(:get_federation_token) }

      before(:each) do
        resp.data[:credentials] = response_credentials
        resp.data[:federated_user] = {
          :federated_user_id => "fred",
          :arn => "arn:fred",
        }
        resp.data[:packed_policy_size] = 12
        client.stub(:get_federation_token).and_return(resp)
      end

      it 'should call get_federation_token' do
        client.should_receive(:get_federation_token).
          with(:name => "Bob")
        sts.new_federated_session("Bob")
      end

      it 'should pass :duration as :duration_seconds' do
        client.should_receive(:get_federation_token).
          with(:name => "Bob",
               :duration_seconds => 10)
        sts.new_federated_session("Bob", :duration => 10)
      end

      context ':policy' do

        it 'should accept a string' do
          client.should_receive(:get_federation_token).
            with(hash_including(:policy => "{}"))
          sts.new_federated_session("Bob", :policy => "{}")
        end

        it 'should accept an object that responds to to_json' do
          policy = double("policy", :to_json => "{}")
          client.should_receive(:get_federation_token).
            with(hash_including(:policy => "{}"))
          sts.new_federated_session("Bob", :policy => policy)
        end

      end

      it 'should return a federated session object' do
        sts.new_federated_session("Bob").should be_a(STS::FederatedSession)
      end

      it 'should set the credentials hash' do
        sts.new_federated_session("Bob").credentials.should == {
          :access_key_id => "FOO",
          :secret_access_key => "BAR",
          :session_token => "BAZ"
        }
      end

      it 'should set the expiration time' do
        sts.new_federated_session("Bob").expires_at.
          should == resp[:credentials][:expiration]
      end

      it 'should set the user ID' do
        sts.new_federated_session("Bob").user_id.should == "fred"
      end

      it 'should set the user ARN' do
        sts.new_federated_session("Bob").user_arn.should == "arn:fred"
      end

      it 'should set the packed policy size' do
        sts.new_federated_session("Bob").packed_policy_size.should == 12
      end

    end

  end
end
