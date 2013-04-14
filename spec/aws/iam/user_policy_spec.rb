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
require 'uri'

module AWS
  class IAM

    describe UserPolicy do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new('username', :config => config) }

      let(:user_policy) { UserPolicy.new(user, 'policy-name') }

      context '#user' do

        it 'returns the user' do
          user_policy.user.should == user
        end

      end

      context '#name' do

        it 'returns the name of the user policy' do
          user_policy.name.should == 'policy-name'
        end

      end

      context '#policy' do

        let(:response) { client.stub_for(:get_user_policy) }

        let(:response_policy) {
          policy = AWS::IAM::Policy.new
          policy.allow(:resources => :any, :actions => :any)
          policy
        }

        before(:each) do

          response.stub(:user_name).and_return(user.name)
          response.stub(:policy_name).and_return(user_policy.name)
          response.stub(:policy_document).
            and_return(URI.encode(response_policy.to_json))

          client.stub(:get_user_policy).and_return(response)

        end

        it 'calls get_user_policy on the client to fetch the policy' do

          client.should_receive(:get_user_policy).
            with(:user_name => user.name, :policy_name => user_policy.name).
            and_return(response)

          user_policy.policy.should == response_policy

        end

        context '#change' do

          it 'calls policy= with the changed policy' do

            # exactly like the returned policy but with the change already
            # applied
            policy = AWS::IAM::Policy.new
            policy.allow(:resources => :any, :actions => :any)
            policy.deny(:resources => :any, :actions => :any)
            policy

            client.should_receive(:put_user_policy).with({
              :user_name => user.name,
              :policy_name => user_policy.name,
              :policy_document => policy.to_json,
            })

            user_policy.policy.change do |policy|
              policy.deny(:actions => :any, :resources => :any)
            end

          end

        end

      end

      context '#policy=' do

        it 'calls put_user_policy on the client to add/update the policy' do

          policy = AWS::IAM::Policy.new
          policy.allow(:resources => :any, :actions => :any)
          policy

          client.should_receive(:put_user_policy).with({
            :user_name => user.name,
            :policy_name => user_policy.name,
            :policy_document => policy.to_json,
          })
          user_policy.policy = policy
        end

      end

      context '#delete' do

        it 'calls delete_user_policy on the client' do
          client.should_receive(:delete_user_policy).with({
            :user_name => user.name,
            :policy_name => user_policy.name,
          })
          user_policy.delete
        end

      end

    end

  end

end
