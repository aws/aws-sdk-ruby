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

    describe UserGroupCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new("username", :config => config) }

      let(:groups) { UserGroupCollection.new(user) }

      context '#add' do

        it 'should call add_user_to_group' do
          client.should_receive(:add_user_to_group).
            with(:group_name => "grpname",
                 :user_name => "username")
          groups.add(Group.new("grpname"))
        end

        it 'should return nil' do
          groups.add(Group.new("grpname")).should be_nil
        end

      end

      context '#remove' do

        it 'should call remove_user_from_group' do
          client.should_receive(:remove_user_from_group).
            with(:group_name => "grpname",
                 :user_name => "username")
          groups.remove(Group.new("grpname"))
        end

        it 'should return nil' do
          groups.remove(Group.new("grpname")).should be_nil
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { groups }
        let(:client_method)   { :list_groups_for_user }
        let(:now)             { Time.now }
        let(:request_options) {{ :user_name => user.name }}
        let(:next_token_key)  { :marker }
        let(:limit_key)       { :max_items }
        let(:member_class)    { Group }

        def stub_n_members response, n
          response.data[:groups] = (1..n).collect{|i|
            {
              :group_name => "group#{i}",
              :group_id => "ABCXYZ#{i}",
              :create_date => now,
              :arn => "awn:aws:iam::12345678901#{i}:group:/path/#{i}/group#{i}",
              :path => "/path/#{i}/",
            }
          }
        end

        it_behaves_like "a collection that yields models" do

          let(:member_class) { Group }

          it 'yields groups with populated names' do
            groups.collect{|u| u.name }.should == %w(group1 group2)
          end

          it 'yields groups with populated create_date timestamps' do
            groups.collect{|u| u.create_date }.should == [now, now]
          end

          it 'yields groups with populated ids' do
            groups.collect{|u| u.id }.should == %w(ABCXYZ1 ABCXYZ2)
          end

        end

      end

    end

  end
end
