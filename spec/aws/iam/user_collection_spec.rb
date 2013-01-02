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

    describe UserCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:users) { UserCollection.new(:config => config) }

      context '#create' do

        let(:response) { client.stub_for(:create_user) }

        before(:each) do
          response.data[:user] = {
            :user_name => 'name',
            :user_id => 'ABCXYZ',
            :path => '/',
            :arn => 'arn',
            :create_date => Time.parse('2011-07-22T16:35:46Z'),
          }
          client.stub(:create_user).and_return(response)
        end

        it 'call create_user on the client' do
          client.should_receive(:create_user).with(:user_name => 'name')
          users.create('name')
        end

        it 'accepts a :path' do
          client.should_receive(:create_user).with(
            :user_name => 'name', :path => '/foo/bar')
          users.create('name', :path => '/foo/bar')
        end

        it 'returns a user with immutable details populated' do
          user = users.create('name')
          user.should be_a(User)
          user.name.should == 'name'
          user.id.should == 'ABCXYZ'
          user.create_date.should == Time.parse('2011-07-22T16:35:46Z')
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)     { users }
        let(:client_method)  { :list_users }
        let(:next_token_key) { :marker }
        let(:limit_key)      { :max_items }
        let(:now)            { Time.now }

        def stub_n_members response, n
          response.data[:users] = (1..n).collect{|i|
            {
              :user_name => "user#{i}",
              :user_id => "ABCXYZ#{i}",
              :create_date => now,
              :arn => "awn:aws:iam::12345678901#{i}:user:/path/#{i}/user#{i}",
              :path => "/path/#{i}/",
            }
          }
        end

        it_behaves_like "a collection using a path prefix"

        it_behaves_like "a collection that yields models" do

          let(:member_class) { User }

          it 'yields users with populated names' do
            users.collect{|u| u.name }.should == %w(user1 user2)
          end

          it 'yields users with populated create_date timestamps' do
            users.collect{|u| u.create_date }.should == [now, now]
          end

          it 'yields users with populated ids' do
            users.collect{|u| u.id }.should == %w(ABCXYZ1 ABCXYZ2)
          end

        end

      end

    end

  end
end
