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

    describe GroupUserCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:group) { Group.new("grpname", :config => config) }

      let(:users) { GroupUserCollection.new(group) }

      context '#add' do

        it 'should call add_user_to_group' do
          client.should_receive(:add_user_to_group).
            with(:group_name => "grpname",
                 :user_name => "usrname")
          users.add(User.new("usrname"))
        end

        it 'should return nil' do
          users.add(User.new("usrname")).should be_nil
        end

      end

      context '#remove' do

        it 'should call remove_user_from_group' do
          client.should_receive(:remove_user_from_group).
            with(:group_name => "grpname",
                 :user_name => "usrname")
          users.remove(User.new("usrname"))
        end

        it 'should return nil' do
          users.remove(User.new("usrname")).should be_nil
        end

      end

      it_behaves_like "a simple collection" do

        let(:collection)      { users }
        let(:client_method)   { :get_group }
        let(:now)             { Time.now }
        let(:request_options) {{ :group_name => group.name }}
        let(:member_class)    { User }

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
