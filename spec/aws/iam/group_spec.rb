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
    describe Group do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:group) { Group.new("grpname", :config => config) }

      context '#initialize' do

        it 'should store the group name' do
          described_class.new("name").name.should == "name"
        end

        it 'should store the create time' do
          t = Time.now
          described_class.new("name", :create_date => t).
            create_date.should == t
        end

        it 'should store the id' do
          described_class.new("name", :id => "123abc").
            id.should == "123abc"
        end

      end

      shared_examples_for "populated group data" do

        let(:response)        { raise NotImplementedError }
        let(:response_object) {{ :group_name => "grpname" }}
        let(:attributes)      { group.attributes_from_response(response) }

        it 'should include the group id' do
          response_object[:group_id] = 'abc123'
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

      context 'populated from get_group' do

        it_should_behave_like "populated group data" do
          let(:response) { client.stub_for(:get_group) }
          before(:each) do
            response.data[:group] = response_object
            client.stub(:get_group).and_return(response)
          end
        end

        it 'should not populate for a non-matching group' do
          resp = client.stub_for(:get_group)
          resp.data[:group] = { :group_name => "foobar" }
          group.attributes_from_response(resp).should be_nil
        end

      end

      context 'populated from create_group' do

        it_should_behave_like "populated group data" do
          let(:response) { client.stub_for(:create_group) }
          before(:each) do
            response.data[:group] = response_object
          end
        end

        it 'should not populate for a non-matching group' do
          resp = client.stub_for(:create_group)
          resp.data[:group] = { :group_name => 'foobar' }
          group.attributes_from_response(resp).should be_nil
        end

      end

      context 'populated from list_groups' do

        it_should_behave_like "populated group data" do
          let(:response) { client.stub_for(:list_groups) }
          before(:each) do
            response.data[:groups] = [response_object]
          end
        end

        it 'should not populate for a non-matching group' do
          resp = client.stub_for(:list_groups)
          resp.data[:groups] = [{ :group_name => 'foobar' }]
          group.attributes_from_response(resp).should be_nil
        end

      end

      context 'populated from list_groups_for_user' do

        it_should_behave_like "populated group data" do
          let(:response) { client.stub_for(:list_groups_for_user) }
          before(:each) do
            response.data[:groups] = [response_object]
          end
        end

        it 'should not populate for a non-matching group' do
          resp = client.stub_for(:list_groups_for_user)
          resp.data[:groups] = [{ :group_name => 'foobar' }]
          group.attributes_from_response(resp).should be_nil
        end

      end

      context '#path=' do

        it 'should call update_group' do
          client.should_receive(:update_group).
            with(:group_name => "grpname",
                 :new_path => "/foo/")
          group.path = "/foo/"
        end

        it 'should automatically add a trailing slash to the path' do
          client.should_receive(:update_group).
            with(:group_name => "grpname",
                 :new_path => "/foo/")
          group.path = "/foo"
        end

        it 'should automatically add a trailing slash to the path' do
          client.should_receive(:update_group).
            with(:group_name => "grpname",
                 :new_path => "/foo/")
          group.path = "foo/"
        end

      end

      context '#name=' do

        it 'updates the group name' do
          client.should_receive(:update_group).
            with(:group_name => "grpname",
                 :new_group_name => "newname")
          group.name = 'newname'
        end

        it 'modifies the name returned by #name' do
          client.should_not_receive(:get_group)
          group.name = 'newname'
          group.name.should == 'newname'
        end

      end

      context '#exists?' do

        it 'should call get_group' do
          client.should_receive(:get_group).
            with(:group_name => "grpname")
          group.exists?
        end

        it 'should return true if there is no error' do
          group.exists?.should be_true
        end

        it 'should return false if there is a NoSuchEntity error' do
          client.stub(:get_group).and_raise(Errors::NoSuchEntity)
          group.exists?.should be_false
        end

        it 'should not rescue other kinds of errors' do
          client.stub(:get_group).and_raise(Errors::FooBla)
          lambda { group.exists? }.should raise_error(Errors::FooBla)
        end

      end

      context '#delete' do

        it 'should call delete_group' do
          client.should_receive(:delete_group).
            with(:group_name => "grpname")
          group.delete
        end

        it 'should return nil' do
          group.delete.should be_nil
        end

      end

      context '#users' do

        it 'should return a collection of the users in the group' do
          users = group.users
          users.should be_a(GroupUserCollection)
          users.group.should be(group)
          users.config.should be(config)
        end

      end

      context '#policies' do

        it 'should return a collection of the policies in the group' do
          policies = group.policies
          policies.should be_a(GroupPolicyCollection)
          policies.group.should be(group)
          policies.config.should be(config)
        end

      end

    end
  end
end
