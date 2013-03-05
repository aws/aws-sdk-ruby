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
  class EC2

    describe SecurityGroupCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { SecurityGroup }

        let(:client_method) { :describe_security_groups }

        def stub_two_members(resp)
          resp.data[:security_group_info] = [{
            :group_name => "g1",
            :group_id => "g1",
            :group_description => "foo",
            :owner_id => "123",
          },{
            :group_name => "g2",
            :group_id => "g2",
            :group_description => "bar",
            :owner_id => "123",
          }]
        end

        it_should_behave_like "a tagged ec2 collection"

        it_should_behave_like "ec2 collection array access"

        context '#create' do

          before(:each) do
            response = client.stub_for(:create_security_group)
            response.data[:group_id] = 'group-id'
            client.stub(:create_security_group).and_return(response)
          end

          it 'should return a new security group' do
            collection.create('name').should be_a(SecurityGroup)
          end

          it 'shoud return a security group with the correct name' do
            collection.create('name').name.should == 'name'
          end

          it 'shoud return a security group with the correct description' do
            collection.create('name', :description => 'desc').
              description.should == 'desc'
          end

          it 'shoud return a security group with the correct config' do
            collection.create('name').config.should == collection.config
          end

          it 'should call create_security_group with the correct options' do
            client.should_receive(:create_security_group).
              with(:group_name => 'abc', :description => 'xyz')
            collection.create('abc', :description => 'xyz')
          end

        end

      end

    end
  end
end
