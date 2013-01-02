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

    describe GroupCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:groups) do
        described_class.new(:config => config)
      end

      context '#create' do

        let(:resp) { client.new_stub_for(:create_group) }

        before(:each) do
          resp.data[:group] = { :group_name => "MyGroup" }
          client.stub(:create_group).and_return(resp)
        end

        it 'should call create_group' do
          client.should_receive(:create_group).
            with(:group_name => "Developers")
          groups.create("Developers")
        end

        it 'should accept an optional path' do
          client.should_receive(:create_group).
            with(:group_name => "Developers",
                 :path => "/foo/")
          groups.create("Developers", :path => "/foo/")
        end

        it 'should automatically add a trailing slash to the path' do
          client.should_receive(:create_group).
            with(:group_name => "Developers",
                 :path => "/foo/")
          groups.create("Developers", :path => "/foo")
        end

        it 'should automatically add a leading slash to the path' do
          client.should_receive(:create_group).
            with(:group_name => "Developers",
                 :path => "/foo/")
          groups.create("Developers", :path => "foo/")
        end

        it 'should return a group object' do
          g = groups.create("SomeGroup")
          g.should be_a(Group)
          g.config.should be(config)
          g.name.should == "MyGroup" # returned by the service
        end

      end

      context '#[]' do

        it 'should return a group object with the name populated' do
          g = groups["SomeGroup"]
          g.should be_a(Group)
          g.name.should == "SomeGroup"
          g.config.should be(config)
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)     { groups }
        let(:client_method)  { :list_groups }
        let(:next_token_key) { :marker }
        let(:limit_key)      { :max_items }
        let(:now)            { Time.now }

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

        it_behaves_like "a collection using a path prefix"

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
